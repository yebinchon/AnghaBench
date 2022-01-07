
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdchain {struct mbuf* md_top; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int md_initm (struct mdchain*,struct mbuf*) ;

void
md_append_record(struct mdchain *mdp, struct mbuf *top)
{
 struct mbuf *m;

 if (mdp->md_top == ((void*)0)) {
  md_initm(mdp, top);
  return;
 }
 m = mdp->md_top;
 while (m->m_nextpkt)
  m = m->m_nextpkt;
 m->m_nextpkt = top;
 top->m_nextpkt = ((void*)0);
 return;
}
