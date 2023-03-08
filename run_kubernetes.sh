#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="dogger1/microproject:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
# minikube start --memory=1945mb
kubectl run microproject \
    --image=$dockerpath \
    --port=80 --labels app=microproject

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microproject 8000:80

