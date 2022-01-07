
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_oerrors; } ;
struct upgt_softc {scalar_t__ sc_tx_timer; int sc_watchdog_ch; int sc_dev; struct ieee80211com sc_ic; } ;


 int callout_reset (int *,int ,void (*) (void*),struct upgt_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;

__attribute__((used)) static void
upgt_watchdog(void *arg)
{
 struct upgt_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   device_printf(sc->sc_dev, "watchdog timeout\n");

   counter_u64_add(ic->ic_oerrors, 1);
   return;
  }
  callout_reset(&sc->sc_watchdog_ch, hz, upgt_watchdog, sc);
 }
}
