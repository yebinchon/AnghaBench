
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int ic_vaps; struct rsu_softc* ic_softc; } ;


 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int ieee80211_stop (struct ieee80211vap*) ;
 scalar_t__ rsu_init (struct rsu_softc*) ;
 int rsu_stop (struct rsu_softc*) ;

__attribute__((used)) static void
rsu_parent(struct ieee80211com *ic)
{
 struct rsu_softc *sc = ic->ic_softc;

 if (ic->ic_nrunning > 0) {
  if (rsu_init(sc) == 0)
   ieee80211_start_all(ic);
  else {
   struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
   if (vap != ((void*)0))
    ieee80211_stop(vap);
  }
 } else
  rsu_stop(sc);
}
