
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct llentry {struct mbuf* la_hold; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
clear_llinfo_pqueue(struct llentry *ln)
{
 struct mbuf *m_hold, *m_hold_next;

 for (m_hold = ln->la_hold; m_hold; m_hold = m_hold_next) {
  m_hold_next = m_hold->m_nextpkt;
  m_freem(m_hold);
 }

 ln->la_hold = ((void*)0);
}
