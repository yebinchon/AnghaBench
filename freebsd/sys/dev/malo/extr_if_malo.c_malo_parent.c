
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {scalar_t__ malo_running; int malo_invalid; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct malo_softc* ic_softc; } ;


 int MALO_LOCK (struct malo_softc*) ;
 int MALO_UNLOCK (struct malo_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int malo_init (struct malo_softc*) ;
 int malo_mode_init (struct malo_softc*) ;
 int malo_stop (struct malo_softc*) ;

__attribute__((used)) static void
malo_parent(struct ieee80211com *ic)
{
 struct malo_softc *sc = ic->ic_softc;
 int startall = 0;

 MALO_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  if (!sc->malo_running && !sc->malo_invalid) {
   malo_init(sc);
   startall = 1;
  }





  malo_mode_init(sc);
 } else if (sc->malo_running)
  malo_stop(sc);
 MALO_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
