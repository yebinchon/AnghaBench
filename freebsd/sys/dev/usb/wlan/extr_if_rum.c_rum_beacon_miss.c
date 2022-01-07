
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_vap {int (* bmiss ) (struct ieee80211vap*) ;} ;
struct rum_softc {int sc_sleeping; scalar_t__ sc_sleep_end; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;


 int DPRINTFN (int,char*) ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 struct rum_vap* RUM_VAP (struct ieee80211vap*) ;
 int stub1 (struct ieee80211vap*) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
rum_beacon_miss(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct rum_softc *sc = ic->ic_softc;
 struct rum_vap *rvp = RUM_VAP(vap);
 int sleep;

 RUM_LOCK(sc);
 if (sc->sc_sleeping && sc->sc_sleep_end < ticks) {
  DPRINTFN(12, "dropping 'sleeping' bit, "
      "device must be awake now\n");

  sc->sc_sleeping = 0;
 }

 sleep = sc->sc_sleeping;
 RUM_UNLOCK(sc);

 if (!sleep)
  rvp->bmiss(vap);




}
