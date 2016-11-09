FROM elasticsearch:5

ENV ES_JAVA_OPTS="-Des.path.conf=/etc/elasticsearch -Xms1024M -Xmx1024M"

EXPOSE 9200 9300

CMD ["-E", "network.host=0.0.0.0", "-E", "discovery.zen.minimum_master_nodes=1"]
