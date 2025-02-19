
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct iwn_softc {struct ieee80211com sc_ic; } ;


 int ic_printf (struct ieee80211com*,char*) ;
 int ieee80211_restart_all (struct ieee80211com*) ;

__attribute__((used)) static void
iwn_scan_timeout(void *arg)
{
 struct iwn_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 ic_printf(ic, "scan timeout\n");
 ieee80211_restart_all(ic);
}
