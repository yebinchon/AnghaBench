
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {scalar_t__ sc_running; } ;
struct ieee80211com {struct rsu_softc* ic_softc; } ;


 int RSU_LOCK (struct rsu_softc*) ;
 int RSU_UNLOCK (struct rsu_softc*) ;
 int rsu_set_multi (struct rsu_softc*) ;

__attribute__((used)) static void
rsu_update_mcast(struct ieee80211com *ic)
{
 struct rsu_softc *sc = ic->ic_softc;

 RSU_LOCK(sc);
 if (sc->sc_running)
  rsu_set_multi(sc);
 RSU_UNLOCK(sc);
}
