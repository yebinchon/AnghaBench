
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {scalar_t__ ic_nrunning; struct ath_softc* ic_softc; } ;
struct ath_softc {TYPE_1__* sc_tx99; int sc_invalid; scalar_t__ sc_running; } ;
struct TYPE_2__ {int (* start ) (TYPE_1__*) ;} ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int EDOOFUS ;
 int HAL_PM_AWAKE ;
 int HAL_PM_FULL_SLEEP ;
 int ath_init (struct ath_softc*) ;
 int ath_mode_init (struct ath_softc*) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int ath_power_setpower (struct ath_softc*,int ,int) ;
 int ath_stop (struct ath_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
ath_parent(struct ieee80211com *ic)
{
 struct ath_softc *sc = ic->ic_softc;
 int error = EDOOFUS;

 ATH_LOCK(sc);
 if (ic->ic_nrunning > 0) {





  if (sc->sc_running) {
   ath_power_set_power_state(sc, HAL_PM_AWAKE);
   ath_mode_init(sc);
   ath_power_restore_power_state(sc);
  } else if (!sc->sc_invalid) {
   error = ath_init(sc);
  }
 } else {
  ath_stop(sc);
  if (!sc->sc_invalid)
   ath_power_setpower(sc, HAL_PM_FULL_SLEEP, 1);
 }
 ATH_UNLOCK(sc);

 if (error == 0) {





  ieee80211_start_all(ic);
 }
}
