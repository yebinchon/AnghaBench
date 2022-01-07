
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;


 int m_freem (struct mbuf*) ;

void
ieee80211_free_mbuf(struct mbuf *m)
{
 struct mbuf *next;

 if (m == ((void*)0))
  return;

 do {
  next = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
  m_freem(m);
 } while ((m = next) != ((void*)0));
}
