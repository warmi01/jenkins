FROM openshift/jenkins-1-centos7
COPY plugins.txt /opt/openshift/configuration/plugins.txt
USER root
RUN /usr/local/bin/plugins.sh /opt/openshift/configuration/plugins.txt
COPY openshift-pipeline.hpi /opt/openshift/plugins/openshift-pipeline.jpi
