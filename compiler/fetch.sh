#!/bin/bash

set -euv -o pipefail

repository=ghcr.io/tari-project/rust-playground

for image in rust-stable rust-beta rust-nightly; do
    docker pull "${repository}/${image}"
    # The backend expects images without a repository prefix
    docker tag "${repository}/${image}" "${image}"
done
