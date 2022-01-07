
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int atomic_add_int (int *,int) ;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int tcp_pcap_clusters_referenced_cur ;
 scalar_t__ tcp_pcap_clusters_referenced_max ;

__attribute__((used)) static __inline bool
tcp_pcap_take_cluster_reference(void)
{
 if (atomic_fetchadd_int(&tcp_pcap_clusters_referenced_cur, 1) >=
  tcp_pcap_clusters_referenced_max) {
  atomic_add_int(&tcp_pcap_clusters_referenced_cur, -1);
  return FALSE;
 }
 return TRUE;
}
