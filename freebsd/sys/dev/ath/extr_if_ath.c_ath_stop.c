
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int * sc_rxlink; int sc_invalid; scalar_t__ sc_blinking; int sc_ledon; int sc_ledpin; int sc_ledtimer; scalar_t__ sc_softled; scalar_t__ sc_running; scalar_t__ sc_wd_timer; int sc_wd_ch; TYPE_1__* sc_tx99; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int (* stop ) (TYPE_1__*) ;} ;


 int ATH_LOCK_ASSERT (struct ath_softc*) ;
 int ATH_RESET_DEFAULT ;
 int HAL_PM_AWAKE ;
 int ath_beacon_free (struct ath_softc*) ;
 int ath_draintxq (struct ath_softc*,int ) ;
 int ath_hal_gpioset (struct ath_hal*,int ,int) ;
 int ath_hal_intrset (struct ath_hal*,int ) ;
 int ath_hal_phydisable (struct ath_hal*) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int ath_stoprecv (struct ath_softc*,int) ;
 int callout_stop (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
ath_stop(struct ath_softc *sc)
{
 struct ath_hal *ah = sc->sc_ah;

 ATH_LOCK_ASSERT(sc);




 ath_power_set_power_state(sc, HAL_PM_AWAKE);

 if (sc->sc_running) {
  callout_stop(&sc->sc_wd_ch);
  sc->sc_wd_timer = 0;
  sc->sc_running = 0;
  if (!sc->sc_invalid) {
   if (sc->sc_softled) {
    callout_stop(&sc->sc_ledtimer);
    ath_hal_gpioset(ah, sc->sc_ledpin,
     !sc->sc_ledon);
    sc->sc_blinking = 0;
   }
   ath_hal_intrset(ah, 0);
  }

  if (!sc->sc_invalid) {
   ath_stoprecv(sc, 1);
   ath_hal_phydisable(ah);
  } else
   sc->sc_rxlink = ((void*)0);
  ath_draintxq(sc, ATH_RESET_DEFAULT);
  ath_beacon_free(sc);
 }


 ath_power_restore_power_state(sc);
}
