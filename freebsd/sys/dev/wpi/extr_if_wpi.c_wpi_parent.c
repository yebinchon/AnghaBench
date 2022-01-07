
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int ic_vaps; struct wpi_softc* ic_softc; } ;


 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int ieee80211_notify_radio (struct ieee80211com*,int) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int ieee80211_stop (struct ieee80211vap*) ;
 scalar_t__ wpi_init (struct wpi_softc*) ;
 int wpi_stop (struct wpi_softc*) ;

__attribute__((used)) static void
wpi_parent(struct ieee80211com *ic)
{
 struct wpi_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 if (ic->ic_nrunning > 0) {
  if (wpi_init(sc) == 0) {
   ieee80211_notify_radio(ic, 1);
   ieee80211_start_all(ic);
  } else {
   ieee80211_notify_radio(ic, 0);
   ieee80211_stop(vap);
  }
 } else {
  ieee80211_notify_radio(ic, 0);
  wpi_stop(sc);
 }
}
