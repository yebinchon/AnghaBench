
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ifqueue {struct mbuf* ifq_tail; struct mbuf* ifq_head; int ifq_len; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int IF_LOCK (struct ifqueue*) ;
 int IF_UNLOCK (struct ifqueue*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;

void
ieee80211_flush_ifq(struct ifqueue *ifq, struct ieee80211vap *vap)
{
 struct ieee80211_node *ni;
 struct mbuf *m, **mprev;

 IF_LOCK(ifq);
 mprev = &ifq->ifq_head;
 while ((m = *mprev) != ((void*)0)) {
  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  if (ni != ((void*)0) && ni->ni_vap == vap) {
   *mprev = m->m_nextpkt;
   ifq->ifq_len--;

   m_freem(m);
   ieee80211_free_node(ni);
  } else
   mprev = &m->m_nextpkt;
 }

 m = ifq->ifq_head;
 for (; m != ((void*)0) && m->m_nextpkt != ((void*)0); m = m->m_nextpkt)
  ;
 ifq->ifq_tail = m;
 IF_UNLOCK(ifq);
}
