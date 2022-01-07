
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zyd_softc {scalar_t__ tx_nfree; int sc_snd; } ;
struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {int iv_ifp; } ;


 int IFCOUNTER_OERRORS ;
 int MA_OWNED ;
 int ZYD_LOCK_ASSERT (struct zyd_softc*,int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* mbufq_dequeue (int *) ;
 scalar_t__ zyd_tx_start (struct zyd_softc*,struct mbuf*,struct ieee80211_node*) ;

__attribute__((used)) static void
zyd_start(struct zyd_softc *sc)
{
 struct ieee80211_node *ni;
 struct mbuf *m;

 ZYD_LOCK_ASSERT(sc, MA_OWNED);

 while (sc->tx_nfree > 0 && (m = mbufq_dequeue(&sc->sc_snd)) != ((void*)0)) {
  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
  if (zyd_tx_start(sc, m, ni) != 0) {
   m_freem(m);
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
   ieee80211_free_node(ni);
   break;
  }
 }
}
