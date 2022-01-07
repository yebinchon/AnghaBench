
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct wpi_softc {int sc_radioon_task; int watchdog_rfkill; struct ieee80211com sc_ic; } ;


 int DPRINTF (struct wpi_softc*,int ,char*) ;
 int WPI_APMG_RFKILL ;
 int WPI_DEBUG_WATCHDOG ;
 int callout_reset (int *,int ,void (*) (void*),struct wpi_softc*) ;
 int hz ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int wpi_prph_read (struct wpi_softc*,int ) ;

__attribute__((used)) static void
wpi_watchdog_rfkill(void *arg)
{
 struct wpi_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 DPRINTF(sc, WPI_DEBUG_WATCHDOG, "RFkill Watchdog: tick\n");


 if ((wpi_prph_read(sc, WPI_APMG_RFKILL) & 0x1) == 0) {

  callout_reset(&sc->watchdog_rfkill, hz, wpi_watchdog_rfkill,
      sc);
 } else
  ieee80211_runtask(ic, &sc->sc_radioon_task);
}
