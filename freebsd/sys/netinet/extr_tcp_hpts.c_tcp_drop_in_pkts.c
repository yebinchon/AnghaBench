
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {struct mbuf* t_in_pkt; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
tcp_drop_in_pkts(struct tcpcb *tp)
{
 struct mbuf *m, *n;

 m = tp->t_in_pkt;
 if (m)
  n = m->m_nextpkt;
 else
  n = ((void*)0);
 tp->t_in_pkt = ((void*)0);
 while (m) {
  m_freem(m);
  m = n;
  if (m)
   n = m->m_nextpkt;
 }
}
