
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_opmode; } ;
struct rtwn_softc {scalar_t__ bcn_vaps; scalar_t__ ap_vaps; scalar_t__ nvaps; struct ieee80211com sc_ic; } ;


 int IEEE80211_M_HOSTAP ;
 int IEEE80211_M_IBSS ;
 int IEEE80211_M_MONITOR ;
 int IEEE80211_M_STA ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;

__attribute__((used)) static void
rtwn_set_ic_opmode(struct rtwn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 RTWN_ASSERT_LOCKED(sc);


 if (sc->bcn_vaps - sc->ap_vaps > 0)
  ic->ic_opmode = IEEE80211_M_IBSS;
 else if (sc->ap_vaps > 0)
  ic->ic_opmode = IEEE80211_M_HOSTAP;
 else if (sc->nvaps > 0)
  ic->ic_opmode = IEEE80211_M_STA;
 else
  ic->ic_opmode = IEEE80211_M_MONITOR;
}
