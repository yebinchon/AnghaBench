
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; struct mbuf* m_next; } ;


 int M_EXT ;
 int atomic_add_int (int *,int) ;
 int tcp_pcap_clusters_referenced_cur ;

__attribute__((used)) static __inline void
tcp_pcap_adj_cluster_reference(struct mbuf *m, int adj)
{
 while (m) {
  if (m->m_flags & M_EXT)
   atomic_add_int(&tcp_pcap_clusters_referenced_cur, adj);

  m = m->m_next;
 }
}
