
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ural_softc {scalar_t__ sc_running; scalar_t__ tx_nfree; int sc_snd; } ;
struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int MA_OWNED ;
 int RAL_LOCK_ASSERT (struct ural_softc*,int ) ;
 scalar_t__ RAL_TX_MINFREE ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 struct mbuf* mbufq_dequeue (int *) ;
 scalar_t__ ural_tx_data (struct ural_softc*,struct mbuf*,struct ieee80211_node*) ;

__attribute__((used)) static void
ural_start(struct ural_softc *sc)
{
 struct ieee80211_node *ni;
 struct mbuf *m;

 RAL_LOCK_ASSERT(sc, MA_OWNED);

 if (sc->sc_running == 0)
  return;

 while (sc->tx_nfree >= RAL_TX_MINFREE &&
     (m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
  if (ural_tx_data(sc, m, ni) != 0) {
   if_inc_counter(ni->ni_vap->iv_ifp,
        IFCOUNTER_OERRORS, 1);
   ieee80211_free_node(ni);
   break;
  }
 }
}
