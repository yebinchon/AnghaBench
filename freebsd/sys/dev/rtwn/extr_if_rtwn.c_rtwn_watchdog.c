
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rtwn_softc {int sc_flags; scalar_t__ sc_tx_timer; int sc_watchdog_to; struct ieee80211com sc_ic; } ;


 int KASSERT (int,char*) ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int callout_reset (int *,int ,void (*) (void*),struct rtwn_softc*) ;
 int hz ;
 int ic_printf (struct ieee80211com*,char*) ;
 int ieee80211_restart_all (struct ieee80211com*) ;

__attribute__((used)) static void
rtwn_watchdog(void *arg)
{
 struct rtwn_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 RTWN_ASSERT_LOCKED(sc);

 KASSERT(sc->sc_flags & RTWN_RUNNING, ("not running"));

 if (sc->sc_tx_timer != 0 && --sc->sc_tx_timer == 0) {
  ic_printf(ic, "device timeout\n");
  ieee80211_restart_all(ic);
  return;
 }
 callout_reset(&sc->sc_watchdog_to, hz, rtwn_watchdog, sc);
}
