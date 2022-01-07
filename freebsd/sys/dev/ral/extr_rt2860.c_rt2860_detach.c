
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rt2860_softc {int sc_mtx; int rxq; int * txq; int sc_snd; struct ieee80211com sc_ic; } ;


 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int rt2860_free_rx_ring (struct rt2860_softc*,int *) ;
 int rt2860_free_tx_pool (struct rt2860_softc*) ;
 int rt2860_free_tx_ring (struct rt2860_softc*,int *) ;
 int rt2860_stop_locked (struct rt2860_softc*) ;

int
rt2860_detach(void *xsc)
{
 struct rt2860_softc *sc = xsc;
 struct ieee80211com *ic = &sc->sc_ic;
 int qid;

 RAL_LOCK(sc);
 rt2860_stop_locked(sc);
 RAL_UNLOCK(sc);

 ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);
 for (qid = 0; qid < 6; qid++)
  rt2860_free_tx_ring(sc, &sc->txq[qid]);
 rt2860_free_rx_ring(sc, &sc->rxq);
 rt2860_free_tx_pool(sc);

 mtx_destroy(&sc->sc_mtx);

 return 0;
}
