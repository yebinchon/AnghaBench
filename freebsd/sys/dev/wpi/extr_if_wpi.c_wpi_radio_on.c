
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
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int ieee80211_init (struct ieee80211vap*) ;

__attribute__((used)) static void
wpi_radio_on(void *arg0, int pending)
{
 struct wpi_softc *sc = arg0;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 device_printf(sc->sc_dev, "RF switch: radio enabled\n");

 WPI_LOCK(sc);
 callout_stop(&sc->watchdog_rfkill);
 WPI_UNLOCK(sc);

 if (vap != ((void*)0))
  ieee80211_init(vap);
}
