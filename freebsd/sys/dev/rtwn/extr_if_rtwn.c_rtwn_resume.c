
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rtwn_softc {struct ieee80211com sc_ic; } ;


 int ieee80211_resume_all (struct ieee80211com*) ;

void
rtwn_resume(struct rtwn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 ieee80211_resume_all(ic);
}
