
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct malo_softc {int malo_snd; int malo_mh; int malo_watchdog_timer; int * malo_tq; int malo_txtask; int malo_rxtask; struct ieee80211com malo_ic; } ;


 int MALO_LOCK_DESTROY (struct malo_softc*) ;
 int callout_drain (int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int malo_dma_cleanup (struct malo_softc*) ;
 int malo_hal_detach (int ) ;
 int malo_stop (struct malo_softc*) ;
 int malo_tx_cleanup (struct malo_softc*) ;
 int mbufq_drain (int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

int
malo_detach(struct malo_softc *sc)
{
 struct ieee80211com *ic = &sc->malo_ic;

 malo_stop(sc);

 if (sc->malo_tq != ((void*)0)) {
  taskqueue_drain(sc->malo_tq, &sc->malo_rxtask);
  taskqueue_drain(sc->malo_tq, &sc->malo_txtask);
  taskqueue_free(sc->malo_tq);
  sc->malo_tq = ((void*)0);
 }
 ieee80211_ifdetach(ic);
 callout_drain(&sc->malo_watchdog_timer);
 malo_dma_cleanup(sc);
 malo_tx_cleanup(sc);
 malo_hal_detach(sc->malo_mh);
 mbufq_drain(&sc->malo_snd);
 MALO_LOCK_DESTROY(sc);

 return 0;
}
