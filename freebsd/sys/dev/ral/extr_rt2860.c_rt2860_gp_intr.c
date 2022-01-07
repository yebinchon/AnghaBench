
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; } ;
struct rt2860_softc {struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;


 int DPRINTFN (int,char*) ;
 scalar_t__ IEEE80211_S_RUN ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int rt2860_updatestats (struct rt2860_softc*) ;

__attribute__((used)) static void
rt2860_gp_intr(struct rt2860_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 DPRINTFN(2, ("GP timeout state=%d\n", vap->iv_state));

 if (vap->iv_state == IEEE80211_S_RUN)
  rt2860_updatestats(sc);
}
