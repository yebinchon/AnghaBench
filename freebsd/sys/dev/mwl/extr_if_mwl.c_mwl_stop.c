
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {scalar_t__ sc_tx_timer; int sc_watchdog; scalar_t__ sc_running; } ;


 int MWL_LOCK_ASSERT (struct mwl_softc*) ;
 int callout_stop (int *) ;
 int mwl_draintxq (struct mwl_softc*) ;

__attribute__((used)) static void
mwl_stop(struct mwl_softc *sc)
{

 MWL_LOCK_ASSERT(sc);
 if (sc->sc_running) {



  sc->sc_running = 0;
  callout_stop(&sc->sc_watchdog);
  sc->sc_tx_timer = 0;
  mwl_draintxq(sc);
 }
}
