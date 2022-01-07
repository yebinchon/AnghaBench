
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_txpowlimit; struct ath_softc* ic_softc; } ;
struct ath_softc {struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;


 int ATH_RESET_FULL ;

 int ath_hal_gettpc (struct ath_hal*) ;
 int ath_hal_settxpowlimit (struct ath_hal*,int ) ;
 int ath_reset (struct ath_softc*,int ) ;

__attribute__((used)) static int
ath_reset_vap(struct ieee80211vap *vap, u_long cmd)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ath_softc *sc = ic->ic_softc;
 struct ath_hal *ah = sc->sc_ah;

 switch (cmd) {
 case 128:





  if (!ath_hal_gettpc(ah))
   ath_hal_settxpowlimit(ah, ic->ic_txpowlimit);
  return 0;
 }

 return ath_reset(sc, ATH_RESET_FULL);
}
