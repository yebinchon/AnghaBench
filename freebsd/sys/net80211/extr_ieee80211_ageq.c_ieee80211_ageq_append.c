
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_ageq {scalar_t__ aq_len; scalar_t__ aq_maxlen; int aq_drops; struct mbuf* aq_tail; struct mbuf* aq_head; } ;


 int ENOSPC ;
 int IEEE80211_AGEQ_LOCK (struct ieee80211_ageq*) ;
 int IEEE80211_AGEQ_UNLOCK (struct ieee80211_ageq*) ;
 int KASSERT (int,char*) ;
 scalar_t__ M_AGE_GET (struct mbuf*) ;
 int M_AGE_SET (struct mbuf*,int) ;
 scalar_t__ __predict_true (int) ;
 int ageq_mfree (struct mbuf*) ;

int
ieee80211_ageq_append(struct ieee80211_ageq *aq, struct mbuf *m, int age)
{
 IEEE80211_AGEQ_LOCK(aq);
 if (__predict_true(aq->aq_len < aq->aq_maxlen)) {
  if (aq->aq_tail == ((void*)0)) {
   aq->aq_head = m;
  } else {
   aq->aq_tail->m_nextpkt = m;
   age -= M_AGE_GET(aq->aq_head);
  }
  KASSERT(age >= 0, ("age %d", age));
  M_AGE_SET(m, age);
  m->m_nextpkt = ((void*)0);
  aq->aq_tail = m;
  aq->aq_len++;
  IEEE80211_AGEQ_UNLOCK(aq);
  return 0;
 } else {



  aq->aq_drops++;
  IEEE80211_AGEQ_UNLOCK(aq);

  ageq_mfree(m);
  return ENOSPC;
 }
}
