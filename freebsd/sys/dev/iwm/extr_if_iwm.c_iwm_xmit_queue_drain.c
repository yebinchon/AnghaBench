
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct iwm_softc {int sc_snd; } ;
struct ieee80211_node {int dummy; } ;


 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* mbufq_dequeue (int *) ;

__attribute__((used)) static void
iwm_xmit_queue_drain(struct iwm_softc *sc)
{
 struct mbuf *m;
 struct ieee80211_node *ni;

 while ((m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  ieee80211_free_node(ni);
  m_freem(m);
 }
}
