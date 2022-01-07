
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; struct mbuf* m_nextpkt; int m_len; } ;
struct ieee80211vap {int (* iv_set_tim ) (struct ieee80211_node*,int) ;} ;
struct ieee80211com {int ic_bintval; } ;
struct ieee80211_psq_head {int len; struct mbuf* tail; struct mbuf* head; } ;
struct ieee80211_psq {int psq_len; int psq_maxlen; int psq_drops; struct ieee80211_psq_head* psq_head; } ;
struct ieee80211_node {int ni_intval; struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; struct ieee80211_psq ni_psq; } ;


 int ENOSPC ;
 int IEEE80211_MSG_ANY ;
 int IEEE80211_MSG_POWER ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,int,int) ;
 int IEEE80211_PSQ_LOCK (struct ieee80211_psq*) ;
 int IEEE80211_PSQ_UNLOCK (struct ieee80211_psq*) ;
 int IEEE80211_TU_TO_MS (int) ;
 int KASSERT (int,char*) ;
 int M_AGE_GET (struct mbuf*) ;
 int M_AGE_SET (struct mbuf*,int) ;
 int M_ENCAP ;
 int caddr_t ;
 int ieee80211_dump_pkt (struct ieee80211com*,int ,int ,int,int) ;
 scalar_t__ ieee80211_msg_dumppkts (struct ieee80211vap*) ;
 int mtod (struct mbuf*,int ) ;
 int psq_mfree (struct mbuf*) ;
 int stub1 (struct ieee80211_node*,int) ;

int
ieee80211_pwrsave(struct ieee80211_node *ni, struct mbuf *m)
{
 struct ieee80211_psq *psq = &ni->ni_psq;
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211com *ic = ni->ni_ic;
 struct ieee80211_psq_head *qhead;
 int qlen, age;

 IEEE80211_PSQ_LOCK(psq);
 if (psq->psq_len >= psq->psq_maxlen) {
  psq->psq_drops++;
  IEEE80211_PSQ_UNLOCK(psq);
  IEEE80211_NOTE(vap, IEEE80211_MSG_ANY, ni,
      "pwr save q overflow, drops %d (size %d)",
      psq->psq_drops, psq->psq_len);





  psq_mfree(m);
  return ENOSPC;
 }
 age = IEEE80211_TU_TO_MS((ni->ni_intval * ic->ic_bintval) << 2) / 1000;






 if (m->m_flags & M_ENCAP)
  qhead = &psq->psq_head[0];
 else
  qhead = &psq->psq_head[1];
 if (qhead->tail == ((void*)0)) {
  struct mbuf *mh;

  qhead->head = m;






  if (qhead == &psq->psq_head[1]) {
   mh = psq->psq_head[0].head;
   if (mh != ((void*)0))
    age-= M_AGE_GET(mh);
  } else {
   mh = psq->psq_head[1].head;
   if (mh != ((void*)0)) {
    int nage = M_AGE_GET(mh) - age;

    M_AGE_SET(mh, nage < 0 ? 0 : nage);
   }
  }
 } else {
  qhead->tail->m_nextpkt = m;
  age -= M_AGE_GET(qhead->head);
 }
 KASSERT(age >= 0, ("age %d", age));
 M_AGE_SET(m, age);
 m->m_nextpkt = ((void*)0);
 qhead->tail = m;
 qhead->len++;
 qlen = ++(psq->psq_len);
 IEEE80211_PSQ_UNLOCK(psq);

 IEEE80211_NOTE(vap, IEEE80211_MSG_POWER, ni,
     "save frame with age %d, %u now queued", age, qlen);

 if (qlen == 1 && vap->iv_set_tim != ((void*)0))
  vap->iv_set_tim(ni, 1);

 return 0;
}
