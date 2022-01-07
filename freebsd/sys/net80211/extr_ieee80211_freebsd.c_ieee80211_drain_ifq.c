
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifqueue {int dummy; } ;
struct ieee80211_node {int dummy; } ;


 int IF_DEQUEUE (struct ifqueue*,struct mbuf*) ;
 int KASSERT (int ,char*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;

void
ieee80211_drain_ifq(struct ifqueue *ifq)
{
 struct ieee80211_node *ni;
 struct mbuf *m;

 for (;;) {
  IF_DEQUEUE(ifq, m);
  if (m == ((void*)0))
   break;

  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  KASSERT(ni != ((void*)0), ("frame w/o node"));
  ieee80211_free_node(ni);
  m->m_pkthdr.rcvif = ((void*)0);

  m_freem(m);
 }
}
