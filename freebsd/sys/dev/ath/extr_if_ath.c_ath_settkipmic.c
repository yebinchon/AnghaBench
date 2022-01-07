
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_cryptocaps; int ic_flags; } ;
struct ath_softc {int sc_ah; int sc_wmetkipmic; struct ieee80211com sc_ic; } ;


 int AH_FALSE ;
 int AH_TRUE ;
 int IEEE80211_CRYPTO_TKIP ;
 int IEEE80211_CRYPTO_TKIPMIC ;
 int IEEE80211_F_WME ;
 int ath_hal_settkipmic (int ,int ) ;

__attribute__((used)) static void
ath_settkipmic(struct ath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 if ((ic->ic_cryptocaps & IEEE80211_CRYPTO_TKIP) && !sc->sc_wmetkipmic) {
  if (ic->ic_flags & IEEE80211_F_WME) {
   ath_hal_settkipmic(sc->sc_ah, AH_FALSE);
   ic->ic_cryptocaps &= ~IEEE80211_CRYPTO_TKIPMIC;
  } else {
   ath_hal_settkipmic(sc->sc_ah, AH_TRUE);
   ic->ic_cryptocaps |= IEEE80211_CRYPTO_TKIPMIC;
  }
 }
}
