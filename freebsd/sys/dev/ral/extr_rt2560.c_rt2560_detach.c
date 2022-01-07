
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rt2560_softc {int sc_mtx; int rxq; int bcnq; int prioq; int atimq; int txq; int sc_snd; struct ieee80211com sc_ic; } ;


 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int rt2560_free_rx_ring (struct rt2560_softc*,int *) ;
 int rt2560_free_tx_ring (struct rt2560_softc*,int *) ;
 int rt2560_stop (struct rt2560_softc*) ;

int
rt2560_detach(void *xsc)
{
 struct rt2560_softc *sc = xsc;
 struct ieee80211com *ic = &sc->sc_ic;

 rt2560_stop(sc);

 ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);

 rt2560_free_tx_ring(sc, &sc->txq);
 rt2560_free_tx_ring(sc, &sc->atimq);
 rt2560_free_tx_ring(sc, &sc->prioq);
 rt2560_free_tx_ring(sc, &sc->bcnq);
 rt2560_free_rx_ring(sc, &sc->rxq);

 mtx_destroy(&sc->sc_mtx);

 return 0;
}
