
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ipw_softc {scalar_t__ txfree; int sc_tx_timer; int sc_snd; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int IPW_LOCK_ASSERT (struct ipw_softc*) ;
 scalar_t__ IPW_MAX_NSEG ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 scalar_t__ ipw_tx_start (struct ipw_softc*,struct mbuf*,struct ieee80211_node*) ;
 struct mbuf* mbufq_dequeue (int *) ;

__attribute__((used)) static void
ipw_start(struct ipw_softc *sc)
{
 struct ieee80211_node *ni;
 struct mbuf *m;

 IPW_LOCK_ASSERT(sc);

 while (sc->txfree >= 1 + IPW_MAX_NSEG &&
     (m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
  if (ipw_tx_start(sc, m, ni) != 0) {
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
   ieee80211_free_node(ni);
   break;
  }

  sc->sc_tx_timer = 5;
 }
}
