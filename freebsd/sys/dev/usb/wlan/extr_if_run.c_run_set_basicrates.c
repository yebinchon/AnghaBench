
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_curmode; } ;
struct run_softc {struct ieee80211com sc_ic; } ;


 scalar_t__ IEEE80211_MODE_11A ;
 scalar_t__ IEEE80211_MODE_11B ;
 int RT2860_LEGACY_BASIC_RATE ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_set_basicrates(struct run_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;


 if (ic->ic_curmode == IEEE80211_MODE_11B)
  run_write(sc, RT2860_LEGACY_BASIC_RATE, 0x003);
 else if (ic->ic_curmode == IEEE80211_MODE_11A)
  run_write(sc, RT2860_LEGACY_BASIC_RATE, 0x150);
 else
  run_write(sc, RT2860_LEGACY_BASIC_RATE, 0x15f);
}
