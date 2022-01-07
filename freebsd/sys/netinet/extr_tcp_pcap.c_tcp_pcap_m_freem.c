
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; } ;


 int M_EXT ;
 int atomic_subtract_int (int *,int) ;
 struct mbuf* m_free (struct mbuf*) ;
 int tcp_pcap_clusters_referenced_cur ;

__attribute__((used)) static void
tcp_pcap_m_freem(struct mbuf *mb)
{
 while (mb != ((void*)0)) {
  if (mb->m_flags & M_EXT)
   atomic_subtract_int(&tcp_pcap_clusters_referenced_cur,
       1);
  mb = m_free(mb);
 }
}
