
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; } ;
struct wpi_softc {int watchdog_rfkill; int sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;


 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int WPI_LOCK (struct wpi_softc*) ;
 int WPI_UNLOCK (struct wpi_softc*) ;
 int callout_reset (int *,int ,int ,struct wpi_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ieee80211_notify_radio (struct ieee80211com*,int ) ;
 int ieee80211_stop (struct ieee80211vap*) ;
 int wpi_stop (struct wpi_softc*) ;
 int wpi_watchdog_rfkill ;

__attribute__((used)) static void
wpi_radio_off(void *arg0, int pending)
{
 struct wpi_softc *sc = arg0;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 device_printf(sc->sc_dev, "RF switch: radio disabled\n");

 ieee80211_notify_radio(ic, 0);
 wpi_stop(sc);
 if (vap != ((void*)0))
  ieee80211_stop(vap);

 WPI_LOCK(sc);
 callout_reset(&sc->watchdog_rfkill, hz, wpi_watchdog_rfkill, sc);
 WPI_UNLOCK(sc);
}
