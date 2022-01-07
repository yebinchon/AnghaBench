
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rum_softc {scalar_t__ tx_nfree; int sc_snd; int sc_running; } ;
struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int RUM_LOCK_ASSERT (struct rum_softc*) ;
 scalar_t__ RUM_TX_MINFREE ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 struct mbuf* mbufq_dequeue (int *) ;
 scalar_t__ rum_tx_data (struct rum_softc*,struct mbuf*,struct ieee80211_node*) ;

__attribute__((used)) static void
rum_start(struct rum_softc *sc)
{
 struct ieee80211_node *ni;
 struct mbuf *m;

 RUM_LOCK_ASSERT(sc);

 if (!sc->sc_running)
  return;

 while (sc->tx_nfree >= RUM_TX_MINFREE &&
     (m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
  if (rum_tx_data(sc, m, ni) != 0) {
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
   ieee80211_free_node(ni);
   break;
  }
 }
}
