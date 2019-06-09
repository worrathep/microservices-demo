#!/bin/sh
# Set the Kubernetes version as found in the UCP Dashboard or API
k8sversion=v1.11.1

# Get the kubectl binary.
curl -LO https://storage.googleapis.com/kubernetes-release/release/$k8sversion/bin/linux/amd64/kubectl

# Make the kubectl binary executable.
chmod +x ./kubectl

# Move the kubectl executable to /usr/local/bin.
sudo mv ./kubectl /usr/local/bin/kubectl

#Move the kubectl config
mkdir ${HOME}/.kube
cp config ${HOME}/.kube/config

#RUN test
kubectl get nodes