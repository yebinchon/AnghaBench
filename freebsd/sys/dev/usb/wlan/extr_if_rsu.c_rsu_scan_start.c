
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_active_scan; int sc_dev; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int ic_vaps; struct ieee80211_scan_state* ic_scan; struct rsu_softc* ic_softc; } ;
struct ieee80211_scan_state {int ss_flags; scalar_t__ ss_nssid; int * ss_ssid; } ;


 int IEEE80211_SCAN_ACTIVE ;
 int RSU_LOCK (struct rsu_softc*) ;
 int RSU_UNLOCK (struct rsu_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*) ;
 int ieee80211_cancel_scan (struct ieee80211vap*) ;
 int rsu_site_survey (struct rsu_softc*,int *) ;

__attribute__((used)) static void
rsu_scan_start(struct ieee80211com *ic)
{
 struct rsu_softc *sc = ic->ic_softc;
 struct ieee80211_scan_state *ss = ic->ic_scan;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 int error;


 RSU_LOCK(sc);
 sc->sc_active_scan = !!(ss->ss_flags & IEEE80211_SCAN_ACTIVE);

 error = rsu_site_survey(sc, ss->ss_nssid > 0 ? &ss->ss_ssid[0] : ((void*)0));
 RSU_UNLOCK(sc);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not send site survey command\n");
  ieee80211_cancel_scan(vap);
 }
}
