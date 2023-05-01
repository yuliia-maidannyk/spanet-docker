# Dockerfile

# Specify the base image that we're building the image on top of
FROM python:3.9

# Build the image as root user
USER root

# Run some bash commands to install packages
RUN pip install --no-cache-dir scikit-learn
RUN pip install --no-cache-dir numpy
RUN pip install --no-cache-dir sympy
RUN pip install --no-cache-dir numba==0.56.4
RUN pip install --no-cache-dir opt_einsum
RUN pip install --no-cache-dir h5py
RUN pip install --no-cache-dir torch==1.13.1
RUN pip install --no-cache-dir pytorch-lightning==1.9.0
RUN pip install --no-cache-dir tensorboard
RUN pip install --no-cache-dir tensorboardx

# This sets the default working directory when a container is launched from the image
WORKDIR /home/docker

# Run as docker user by default when the container starts up
#USER docker
