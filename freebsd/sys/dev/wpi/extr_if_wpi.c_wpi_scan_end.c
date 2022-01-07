
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int ic_vaps; struct wpi_softc* ic_softc; } ;


 scalar_t__ IEEE80211_S_RUN ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int WPI_LED_LINK ;
 int wpi_set_led (struct wpi_softc*,int ,int ,int) ;

__attribute__((used)) static void
wpi_scan_end(struct ieee80211com *ic)
{
 struct wpi_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 if (vap->iv_state == IEEE80211_S_RUN)
  wpi_set_led(sc, WPI_LED_LINK, 0, 1);
}
