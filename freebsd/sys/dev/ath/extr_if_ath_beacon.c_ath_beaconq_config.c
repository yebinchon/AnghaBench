
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wmeParams {int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; } ;
struct ieee80211com {scalar_t__ ic_opmode; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;
struct ath_softc {int sc_bhalq; int sc_dev; struct ath_hal* sc_ah; struct ieee80211com sc_ic; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int tqi_cwmin; int tqi_cwmax; int tqi_aifs; } ;
typedef TYPE_1__ HAL_TXQ_INFO ;


 int ATH_BEACON_AIFS_DEFAULT ;
 int ATH_BEACON_CWMAX_DEFAULT ;
 int ATH_BEACON_CWMIN_DEFAULT ;
 int ATH_EXPONENT_TO_VALUE (int ) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_MBSS ;
 size_t WME_AC_BE ;
 int ath_hal_gettxqueueprops (struct ath_hal*,int ,TYPE_1__*) ;
 int ath_hal_resettxqueue (struct ath_hal*,int ) ;
 int ath_hal_settxqueueprops (struct ath_hal*,int ,TYPE_1__*) ;
 int device_printf (int ,char*) ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;

int
ath_beaconq_config(struct ath_softc *sc)
{

 struct ieee80211com *ic = &sc->sc_ic;
 struct ath_hal *ah = sc->sc_ah;
 HAL_TXQ_INFO qi;

 ath_hal_gettxqueueprops(ah, sc->sc_bhalq, &qi);
 if (ic->ic_opmode == IEEE80211_M_HOSTAP ||
     ic->ic_opmode == IEEE80211_M_MBSS) {



  qi.tqi_aifs = ATH_BEACON_AIFS_DEFAULT;
  qi.tqi_cwmin = ATH_BEACON_CWMIN_DEFAULT;
  qi.tqi_cwmax = ATH_BEACON_CWMAX_DEFAULT;
 } else {
  struct chanAccParams chp;
  struct wmeParams *wmep;

  ieee80211_wme_ic_getparams(ic, &chp);
  wmep = &chp.cap_wmeParams[WME_AC_BE];




  qi.tqi_aifs = wmep->wmep_aifsn;
  qi.tqi_cwmin = 2*((1<<(wmep->wmep_logcwmin))-1);
  qi.tqi_cwmax = ((1<<(wmep->wmep_logcwmax))-1);
 }

 if (!ath_hal_settxqueueprops(ah, sc->sc_bhalq, &qi)) {
  device_printf(sc->sc_dev, "unable to update parameters for "
   "beacon hardware queue!\n");
  return 0;
 } else {
  ath_hal_resettxqueue(ah, sc->sc_bhalq);
  return 1;
 }

}
