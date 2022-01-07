
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; int ic_oerrors; } ;
struct iwi_softc {scalar_t__ sc_tx_timer; scalar_t__ sc_state_timer; scalar_t__ fw_state; scalar_t__ sc_busy_timer; int sc_wdtimer; int sc_restarttask; int sc_dev; struct ieee80211com sc_ic; } ;


 scalar_t__ IWI_FW_SCANNING ;
 int IWI_LOCK_ASSERT (struct iwi_softc*) ;
 int TAILQ_FIRST (int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct iwi_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int ieee80211_cancel_scan (int ) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
iwi_watchdog(void *arg)
{
 struct iwi_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 IWI_LOCK_ASSERT(sc);

 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   device_printf(sc->sc_dev, "device timeout\n");
   counter_u64_add(ic->ic_oerrors, 1);
   ieee80211_runtask(ic, &sc->sc_restarttask);
  }
 }
 if (sc->sc_state_timer > 0) {
  if (--sc->sc_state_timer == 0) {
   device_printf(sc->sc_dev,
       "firmware stuck in state %d, resetting\n",
       sc->fw_state);
   if (sc->fw_state == IWI_FW_SCANNING)
    ieee80211_cancel_scan(TAILQ_FIRST(&ic->ic_vaps));
   ieee80211_runtask(ic, &sc->sc_restarttask);
   sc->sc_state_timer = 3;
  }
 }
 if (sc->sc_busy_timer > 0) {
  if (--sc->sc_busy_timer == 0) {
   device_printf(sc->sc_dev,
       "firmware command timeout, resetting\n");
   ieee80211_runtask(ic, &sc->sc_restarttask);
  }
 }
 callout_reset(&sc->sc_wdtimer, hz, iwi_watchdog, sc);
}
