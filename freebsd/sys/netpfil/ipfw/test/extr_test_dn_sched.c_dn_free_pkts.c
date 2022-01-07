
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;


 int m_freem (struct mbuf*) ;

void
dn_free_pkts(struct mbuf *m)
{
 struct mbuf *x;
 while ( (x = m) ) {
  m = m->m_nextpkt;
  m_freem(x);
 }
}
