
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_curchan; scalar_t__ ic_bsschan; struct ath_softc* ic_softc; } ;
struct ath_softc {int sc_syncbeacon; int sc_scanning; } ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_PM_AWAKE ;
 int ath_chan_set (struct ath_softc*,scalar_t__) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;

__attribute__((used)) static void
ath_set_channel(struct ieee80211com *ic)
{
 struct ath_softc *sc = ic->ic_softc;

 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ATH_UNLOCK(sc);

 (void) ath_chan_set(sc, ic->ic_curchan);






 ATH_LOCK(sc);
 if (!sc->sc_scanning && ic->ic_curchan == ic->ic_bsschan)
  sc->sc_syncbeacon = 1;
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);
}
