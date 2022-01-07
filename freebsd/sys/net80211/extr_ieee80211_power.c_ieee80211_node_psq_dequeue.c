
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_psq_head {scalar_t__ len; int * tail; struct mbuf* head; } ;
struct ieee80211_psq {int psq_len; struct ieee80211_psq_head* psq_head; } ;
struct ieee80211_node {struct ieee80211_psq ni_psq; } ;


 int IEEE80211_PSQ_LOCK (struct ieee80211_psq*) ;
 int IEEE80211_PSQ_UNLOCK (struct ieee80211_psq*) ;
 int KASSERT (int,char*) ;

struct mbuf *
ieee80211_node_psq_dequeue(struct ieee80211_node *ni, int *qlen)
{
 struct ieee80211_psq *psq = &ni->ni_psq;
 struct ieee80211_psq_head *qhead;
 struct mbuf *m;

 IEEE80211_PSQ_LOCK(psq);
 qhead = &psq->psq_head[0];
again:
 if ((m = qhead->head) != ((void*)0)) {
  if ((qhead->head = m->m_nextpkt) == ((void*)0))
   qhead->tail = ((void*)0);
  KASSERT(qhead->len > 0, ("qhead len %d", qhead->len));
  qhead->len--;
  KASSERT(psq->psq_len > 0, ("psq len %d", psq->psq_len));
  psq->psq_len--;
  m->m_nextpkt = ((void*)0);
 }
 if (m == ((void*)0) && qhead == &psq->psq_head[0]) {

  qhead = &psq->psq_head[1];
  goto again;
 }
 if (qlen != ((void*)0))
  *qlen = psq->psq_len;
 IEEE80211_PSQ_UNLOCK(psq);
 return m;
}
