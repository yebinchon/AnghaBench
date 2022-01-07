
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {scalar_t__ sc_strategy; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,scalar_t__) ;
 int URTW_DEBUG_STATE ;
 int URTW_LOCK (struct urtw_softc*) ;
 scalar_t__ URTW_SW_LED_MODE0 ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int urtw_led_blink (struct urtw_softc*) ;

__attribute__((used)) static void
urtw_ledtask(void *arg, int pending)
{
 struct urtw_softc *sc = arg;

 if (sc->sc_strategy != URTW_SW_LED_MODE0) {
  DPRINTF(sc, URTW_DEBUG_STATE,
      "could not process a LED strategy 0x%x",
      sc->sc_strategy);
  return;
 }

 URTW_LOCK(sc);
 urtw_led_blink(sc);
 URTW_UNLOCK(sc);
}
