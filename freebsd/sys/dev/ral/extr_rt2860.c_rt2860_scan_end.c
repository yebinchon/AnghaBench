
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int ic_vaps; struct rt2860_softc* ic_softc; } ;


 scalar_t__ IEEE80211_S_RUN ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int rt2860_enable_tsf_sync (struct rt2860_softc*) ;
 int rt2860_set_gp_timer (struct rt2860_softc*,int) ;

__attribute__((used)) static void
rt2860_scan_end(struct ieee80211com *ic)
{
 struct rt2860_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 if (vap->iv_state == IEEE80211_S_RUN) {
  rt2860_enable_tsf_sync(sc);
  rt2860_set_gp_timer(sc, 500);
 }
}
