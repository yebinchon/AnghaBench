
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ath_softc {int sc_keymax; struct ath_hal* sc_ah; struct ieee80211com sc_ic; } ;
struct ath_hal {int dummy; } ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_PM_AWAKE ;
 int ath_hal_keyreset (struct ath_hal*,int) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int ieee80211_crypto_reload_keys (struct ieee80211com*) ;

__attribute__((used)) static void
ath_reset_keycache(struct ath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ath_hal *ah = sc->sc_ah;
 int i;

 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 for (i = 0; i < sc->sc_keymax; i++)
  ath_hal_keyreset(ah, i);
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);
 ieee80211_crypto_reload_keys(ic);
}
