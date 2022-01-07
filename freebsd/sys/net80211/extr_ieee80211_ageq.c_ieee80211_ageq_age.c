
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_ageq {scalar_t__ aq_len; int * aq_tail; struct mbuf* aq_head; } ;


 int IEEE80211_AGEQ_LOCK (struct ieee80211_ageq*) ;
 int IEEE80211_AGEQ_UNLOCK (struct ieee80211_ageq*) ;
 int KASSERT (int,char*) ;
 int M_AGE_GET (struct mbuf*) ;
 int M_AGE_SUB (struct mbuf*,int) ;

struct mbuf *
ieee80211_ageq_age(struct ieee80211_ageq *aq, int quanta)
{
 struct mbuf *head, **phead;
 struct mbuf *m;

 phead = &head;
 if (aq->aq_len != 0) {
  IEEE80211_AGEQ_LOCK(aq);
  while ((m = aq->aq_head) != ((void*)0) && M_AGE_GET(m) < quanta) {
   if ((aq->aq_head = m->m_nextpkt) == ((void*)0))
    aq->aq_tail = ((void*)0);
   KASSERT(aq->aq_len > 0, ("aq len %d", aq->aq_len));
   aq->aq_len--;

   *phead = m;
   phead = &m->m_nextpkt;
  }
  if (m != ((void*)0))
   M_AGE_SUB(m, quanta);
  IEEE80211_AGEQ_UNLOCK(aq);
 }
 *phead = ((void*)0);
 return head;
}
