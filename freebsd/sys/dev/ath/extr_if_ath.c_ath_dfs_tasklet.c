
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ath_softc {int sc_curchan; struct ieee80211com sc_ic; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 scalar_t__ ath_dfs_process_radar_event (struct ath_softc*,int ) ;
 int ieee80211_dfs_notify_radar (struct ieee80211com*,int ) ;

__attribute__((used)) static void
ath_dfs_tasklet(void *p, int npending)
{
 struct ath_softc *sc = (struct ath_softc *) p;
 struct ieee80211com *ic = &sc->sc_ic;






 if (ath_dfs_process_radar_event(sc, sc->sc_curchan)) {
  IEEE80211_LOCK(ic);
  ieee80211_dfs_notify_radar(ic, sc->sc_curchan);
  IEEE80211_UNLOCK(ic);
 }
}
