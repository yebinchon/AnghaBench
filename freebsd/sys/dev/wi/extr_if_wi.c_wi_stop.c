
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int sc_portnum; int sc_flags; scalar_t__ sc_false_syns; scalar_t__ sc_tx_timer; int sc_watchdog; scalar_t__ sc_enabled; scalar_t__ wi_gone; } ;


 int CSR_WRITE_2 (struct wi_softc*,int ,int ) ;
 int WI_CMD_DISABLE ;
 int WI_FLAGS_RUNNING ;
 int WI_INT_EN ;
 int WI_LOCK_ASSERT (struct wi_softc*) ;
 int callout_stop (int *) ;
 int wi_cmd (struct wi_softc*,int,int ,int ,int ) ;

void
wi_stop(struct wi_softc *sc, int disable)
{

 WI_LOCK_ASSERT(sc);

 if (sc->sc_enabled && !sc->wi_gone) {
  CSR_WRITE_2(sc, WI_INT_EN, 0);
  wi_cmd(sc, WI_CMD_DISABLE | sc->sc_portnum, 0, 0, 0);
  if (disable)
   sc->sc_enabled = 0;
 } else if (sc->wi_gone && disable)
  sc->sc_enabled = 0;

 callout_stop(&sc->sc_watchdog);
 sc->sc_tx_timer = 0;
 sc->sc_false_syns = 0;

 sc->sc_flags &= ~WI_FLAGS_RUNNING;
}
