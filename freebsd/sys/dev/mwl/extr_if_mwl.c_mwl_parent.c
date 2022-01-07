
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_invalid; scalar_t__ sc_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct mwl_softc* ic_softc; } ;


 int MWL_LOCK (struct mwl_softc*) ;
 int MWL_UNLOCK (struct mwl_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int mwl_init (struct mwl_softc*) ;
 int mwl_mode_init (struct mwl_softc*) ;
 int mwl_stop (struct mwl_softc*) ;

__attribute__((used)) static void
mwl_parent(struct ieee80211com *ic)
{
 struct mwl_softc *sc = ic->ic_softc;
 int startall = 0;

 MWL_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  if (sc->sc_running) {





   mwl_mode_init(sc);
  } else {
   if (!sc->sc_invalid) {
    mwl_init(sc);
    startall = 1;
   }
  }
 } else
  mwl_stop(sc);
 MWL_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
