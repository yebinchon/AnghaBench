
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nmbclusters ;
 int tcp_pcap_clusters_referenced_max ;

__attribute__((used)) static void
tcp_pcap_max_set(void)
{

 tcp_pcap_clusters_referenced_max = nmbclusters / 4;
}
