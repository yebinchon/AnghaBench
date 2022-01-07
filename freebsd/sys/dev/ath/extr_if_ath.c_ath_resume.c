
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int * ic_curchan; } ;
struct ath_softc {int sc_rx_stopped; int sc_rx_resetted; scalar_t__ sc_resume_up; struct ath_hal* sc_ah; scalar_t__ sc_tdma; scalar_t__ sc_hasenforcetxop; int * sc_curchan; int sc_opmode; int sc_cur_rxchainmask; int sc_cur_txchainmask; struct ieee80211com sc_ic; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;


 int AH_FALSE ;
 int ATH_LOCK (struct ath_softc*) ;
 int ATH_RX_LOCK (struct ath_softc*) ;
 int ATH_RX_UNLOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_LED_INIT ;
 int HAL_PM_AWAKE ;
 int HAL_RESET_NORMAL ;
 int ath_btcoex_enable (struct ath_softc*,int *) ;
 int ath_dfs_radar_enable (struct ath_softc*,int *) ;
 int ath_hal_enablepcie (struct ath_hal*,int ,int ) ;
 int ath_hal_reset (struct ath_hal*,int ,int *,int ,int ,int *) ;
 int ath_hal_setchainmasks (struct ath_hal*,int ,int ) ;
 int ath_hal_setenforcetxop (struct ath_hal*,int) ;
 int ath_hal_setledstate (struct ath_hal*,int ) ;
 int ath_led_config (struct ath_softc*) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int ath_power_setpower (struct ath_softc*,int ,int) ;
 int ath_power_setselfgen (struct ath_softc*,int ) ;
 int ath_reset_keycache (struct ath_softc*) ;
 int ath_spectral_enable (struct ath_softc*,int *) ;
 int ath_update_chainmasks (struct ath_softc*,int *) ;
 int ieee80211_resume_all (struct ieee80211com*) ;

void
ath_resume(struct ath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ath_hal *ah = sc->sc_ah;
 HAL_STATUS status;

 ath_hal_enablepcie(ah, 0, 0);





 ath_update_chainmasks(sc,
     sc->sc_curchan != ((void*)0) ? sc->sc_curchan : ic->ic_curchan);
 ath_hal_setchainmasks(sc->sc_ah, sc->sc_cur_txchainmask,
     sc->sc_cur_rxchainmask);


 ATH_LOCK(sc);
 ath_power_setselfgen(sc, HAL_PM_AWAKE);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ath_power_setpower(sc, HAL_PM_AWAKE, 1);
 ATH_UNLOCK(sc);

 ath_hal_reset(ah, sc->sc_opmode,
     sc->sc_curchan != ((void*)0) ? sc->sc_curchan : ic->ic_curchan,
     AH_FALSE, HAL_RESET_NORMAL, &status);
 ath_reset_keycache(sc);

 ATH_RX_LOCK(sc);
 sc->sc_rx_stopped = 1;
 sc->sc_rx_resetted = 1;
 ATH_RX_UNLOCK(sc);


 ath_dfs_radar_enable(sc, ic->ic_curchan);


 ath_spectral_enable(sc, ic->ic_curchan);




 ath_btcoex_enable(sc, ic->ic_curchan);





 if (sc->sc_hasenforcetxop && sc->sc_tdma)
  ath_hal_setenforcetxop(sc->sc_ah, 1);
 else
  ath_hal_setenforcetxop(sc->sc_ah, 0);


 ath_led_config(sc);
 ath_hal_setledstate(ah, HAL_LED_INIT);

 if (sc->sc_resume_up)
  ieee80211_resume_all(ic);

 ATH_LOCK(sc);
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);


}
