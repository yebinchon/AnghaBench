
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rt2661_softc {int sc_mtx; int rxq; int mgtq; int * txq; int sc_snd; struct ieee80211com sc_ic; } ;


 int RAL_LOCK (struct rt2661_softc*) ;
 int RAL_UNLOCK (struct rt2661_softc*) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int rt2661_free_rx_ring (struct rt2661_softc*,int *) ;
 int rt2661_free_tx_ring (struct rt2661_softc*,int *) ;
 int rt2661_stop_locked (struct rt2661_softc*) ;

int
rt2661_detach(void *xsc)
{
 struct rt2661_softc *sc = xsc;
 struct ieee80211com *ic = &sc->sc_ic;

 RAL_LOCK(sc);
 rt2661_stop_locked(sc);
 RAL_UNLOCK(sc);

 ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);

 rt2661_free_tx_ring(sc, &sc->txq[0]);
 rt2661_free_tx_ring(sc, &sc->txq[1]);
 rt2661_free_tx_ring(sc, &sc->txq[2]);
 rt2661_free_tx_ring(sc, &sc->txq[3]);
 rt2661_free_tx_ring(sc, &sc->mgtq);
 rt2661_free_rx_ring(sc, &sc->rxq);

 mtx_destroy(&sc->sc_mtx);

 return 0;
}
