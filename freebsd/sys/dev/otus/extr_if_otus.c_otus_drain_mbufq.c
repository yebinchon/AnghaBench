
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct otus_softc {int sc_snd; } ;
struct TYPE_2__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;


 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* mbufq_dequeue (int *) ;

__attribute__((used)) static void
otus_drain_mbufq(struct otus_softc *sc)
{
 struct mbuf *m;
 struct ieee80211_node *ni;

 OTUS_LOCK_ASSERT(sc);
 while ((m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
  m->m_pkthdr.rcvif = ((void*)0);
  ieee80211_free_node(ni);
  m_freem(m);
 }
}
