
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;


 int ageq_mfree (struct mbuf*) ;

void
ieee80211_ageq_mfree(struct mbuf *m)
{
 struct mbuf *next;

 for (; m != ((void*)0); m = next) {
  next = m->m_nextpkt;
  ageq_mfree(m);
 }
}
