
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {int dummy; } ;
struct mbuf {int dummy; } ;


 struct mbuf* mbufq_dequeue (struct mbufq*) ;
 int tcp_pcap_m_freem (struct mbuf*) ;

void
tcp_pcap_drain(struct mbufq *queue)
{
 struct mbuf *m;
 while ((m = mbufq_dequeue(queue)))
  tcp_pcap_m_freem(m);
}
