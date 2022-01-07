
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct rt2860_softc* ic_softc; } ;


 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int RT2860_RUNNING ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int rt2860_init_locked (struct rt2860_softc*) ;
 int rt2860_stop_locked (struct rt2860_softc*) ;
 int rt2860_update_promisc (struct ieee80211com*) ;

__attribute__((used)) static void
rt2860_parent(struct ieee80211com *ic)
{
 struct rt2860_softc *sc = ic->ic_softc;
 int startall = 0;

 RAL_LOCK(sc);
 if (ic->ic_nrunning> 0) {
  if (!(sc->sc_flags & RT2860_RUNNING)) {
   rt2860_init_locked(sc);
   startall = 1;
  } else
   rt2860_update_promisc(ic);
 } else if (sc->sc_flags & RT2860_RUNNING)
  rt2860_stop_locked(sc);
 RAL_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
