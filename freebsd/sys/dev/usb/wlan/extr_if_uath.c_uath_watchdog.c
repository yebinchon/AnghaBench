
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_oerrors; } ;
struct uath_softc {scalar_t__ sc_tx_timer; int watchdog_ch; int sc_dev; struct ieee80211com sc_ic; } ;


 int callout_reset (int *,int ,void (*) (void*),struct uath_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ieee80211_restart_all (struct ieee80211com*) ;

__attribute__((used)) static void
uath_watchdog(void *arg)
{
 struct uath_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   device_printf(sc->sc_dev, "device timeout\n");
   counter_u64_add(ic->ic_oerrors, 1);
   ieee80211_restart_all(ic);
   return;
  }
  callout_reset(&sc->watchdog_ch, hz, uath_watchdog, sc);
 }
}
