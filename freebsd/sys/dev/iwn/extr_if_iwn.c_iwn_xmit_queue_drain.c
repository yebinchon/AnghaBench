
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct iwn_softc {int sc_xmit_queue; } ;
struct ieee80211_node {int dummy; } ;


 int IWN_LOCK_ASSERT (struct iwn_softc*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* mbufq_dequeue (int *) ;

__attribute__((used)) static void
iwn_xmit_queue_drain(struct iwn_softc *sc)
{
 struct mbuf *m;
 struct ieee80211_node *ni;

 IWN_LOCK_ASSERT(sc);
 while ((m = mbufq_dequeue(&sc->sc_xmit_queue)) != ((void*)0)) {
  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  ieee80211_free_node(ni);
  m_freem(m);
 }
}
