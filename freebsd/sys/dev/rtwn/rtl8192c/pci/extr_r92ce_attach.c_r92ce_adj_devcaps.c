
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_caps; } ;
struct rtwn_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_C_PMGT ;

__attribute__((used)) static void
r92ce_adj_devcaps(struct rtwn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;





 ic->ic_caps &= ~IEEE80211_C_PMGT;
}
