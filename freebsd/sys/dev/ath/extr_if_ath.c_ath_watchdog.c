
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211com {int ic_oerrors; } ;
struct TYPE_2__ {int ast_watchdog; } ;
struct ath_softc {scalar_t__ sc_wd_timer; int sc_wd_ch; int sc_resettask; int sc_tq; TYPE_1__ sc_stats; int sc_dev; int sc_ah; struct ieee80211com sc_ic; } ;


 int ATH_LOCK_ASSERT (struct ath_softc*) ;
 int HAL_PM_AWAKE ;
 scalar_t__ ath_hal_gethangstate (int ,int,int*) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int callout_schedule (int *,int ) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ath_watchdog(void *arg)
{
 struct ath_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 int do_reset = 0;

 ATH_LOCK_ASSERT(sc);

 if (sc->sc_wd_timer != 0 && --sc->sc_wd_timer == 0) {
  uint32_t hangs;

  ath_power_set_power_state(sc, HAL_PM_AWAKE);

  if (ath_hal_gethangstate(sc->sc_ah, 0xffff, &hangs) &&
      hangs != 0) {
   device_printf(sc->sc_dev, "%s hang detected (0x%x)\n",
       hangs & 0xff ? "bb" : "mac", hangs);
  } else
   device_printf(sc->sc_dev, "device timeout\n");
  do_reset = 1;
  counter_u64_add(ic->ic_oerrors, 1);
  sc->sc_stats.ast_watchdog++;

  ath_power_restore_power_state(sc);
 }







 if (do_reset) {
  taskqueue_enqueue(sc->sc_tq, &sc->sc_resettask);
 }

 callout_schedule(&sc->sc_wd_ch, hz);
}
