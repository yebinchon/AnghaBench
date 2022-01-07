
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct ipw_softc* ic_softc; } ;


 int IPW_FLAG_RUNNING ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int ipw_init_locked (struct ipw_softc*) ;
 int ipw_stop_locked (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_parent(struct ieee80211com *ic)
{
 struct ipw_softc *sc = ic->ic_softc;
 int startall = 0;

 IPW_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  if (!(sc->flags & IPW_FLAG_RUNNING)) {
   ipw_init_locked(sc);
   startall = 1;
  }
 } else if (sc->flags & IPW_FLAG_RUNNING)
  ipw_stop_locked(sc);
 IPW_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
