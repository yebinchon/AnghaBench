
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int ic_vaps; struct iwn_softc* ic_softc; } ;


 scalar_t__ IEEE80211_S_RUN ;
 int IWN_LED_LINK ;
 int IWN_LOCK (struct iwn_softc*) ;
 int IWN_UNLOCK (struct iwn_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int iwn_set_led (struct iwn_softc*,int ,int ,int) ;

__attribute__((used)) static void
iwn_scan_end(struct ieee80211com *ic)
{
 struct iwn_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 IWN_LOCK(sc);
 if (vap->iv_state == IEEE80211_S_RUN) {

  iwn_set_led(sc, IWN_LED_LINK, 0, 1);
 }
 IWN_UNLOCK(sc);
}
