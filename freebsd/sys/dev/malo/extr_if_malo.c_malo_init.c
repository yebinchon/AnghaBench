
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct malo_softc {scalar_t__ malo_running; struct ieee80211com malo_ic; } ;


 int MALO_LOCK (struct malo_softc*) ;
 int MALO_UNLOCK (struct malo_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int malo_init_locked (struct malo_softc*) ;

__attribute__((used)) static void
malo_init(void *arg)
{
 struct malo_softc *sc = (struct malo_softc *) arg;
 struct ieee80211com *ic = &sc->malo_ic;

 MALO_LOCK(sc);
 malo_init_locked(sc);
 MALO_UNLOCK(sc);

 if (sc->malo_running)
  ieee80211_start_all(ic);
}
