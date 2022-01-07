
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct mwl_softc {int sc_snd; int sc_mh; int sc_watchdog; struct ieee80211com sc_ic; } ;


 int MWL_LOCK (struct mwl_softc*) ;
 int MWL_RXFREE_DESTROY (struct mwl_softc*) ;
 int MWL_UNLOCK (struct mwl_softc*) ;
 int callout_drain (int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mwl_dma_cleanup (struct mwl_softc*) ;
 int mwl_hal_detach (int ) ;
 int mwl_stop (struct mwl_softc*) ;
 int mwl_tx_cleanup (struct mwl_softc*) ;

int
mwl_detach(struct mwl_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 MWL_LOCK(sc);
 mwl_stop(sc);
 MWL_UNLOCK(sc);
 ieee80211_ifdetach(ic);
 callout_drain(&sc->sc_watchdog);
 mwl_dma_cleanup(sc);
 MWL_RXFREE_DESTROY(sc);
 mwl_tx_cleanup(sc);
 mwl_hal_detach(sc->sc_mh);
 mbufq_drain(&sc->sc_snd);

 return 0;
}
