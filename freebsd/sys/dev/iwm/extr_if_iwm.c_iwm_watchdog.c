
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_oerrors; } ;
struct iwm_softc {scalar_t__ sc_attached; scalar_t__ sc_tx_timer; int sc_watchdog_to; struct ieee80211com sc_ic; int sc_dev; } ;


 int callout_reset (int *,int ,void (*) (void*),struct iwm_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ieee80211_restart_all (struct ieee80211com*) ;
 int iwm_nic_error (struct iwm_softc*) ;

__attribute__((used)) static void
iwm_watchdog(void *arg)
{
 struct iwm_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 if (sc->sc_attached == 0)
  return;

 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   device_printf(sc->sc_dev, "device timeout\n");



   ieee80211_restart_all(ic);
   counter_u64_add(sc->sc_ic.ic_oerrors, 1);
   return;
  }
  callout_reset(&sc->sc_watchdog_to, hz, iwm_watchdog, sc);
 }
}
