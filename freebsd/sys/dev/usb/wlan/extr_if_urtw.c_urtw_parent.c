
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_promisc; scalar_t__ ic_allmulti; struct urtw_softc* ic_softc; } ;


 int URTW_DETACHED ;
 int URTW_LOCK (struct urtw_softc*) ;
 int URTW_RUNNING ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int urtw_init (struct urtw_softc*) ;
 int urtw_set_multi (struct urtw_softc*) ;
 int urtw_stop (struct urtw_softc*) ;

__attribute__((used)) static void
urtw_parent(struct ieee80211com *ic)
{
 struct urtw_softc *sc = ic->ic_softc;
 int startall = 0;

 URTW_LOCK(sc);
 if (sc->sc_flags & URTW_DETACHED) {
  URTW_UNLOCK(sc);
  return;
 }

 if (ic->ic_nrunning > 0) {
  if (sc->sc_flags & URTW_RUNNING) {
   if (ic->ic_promisc > 0 || ic->ic_allmulti > 0)
    urtw_set_multi(sc);
  } else {
   urtw_init(sc);
   startall = 1;
  }
 } else if (sc->sc_flags & URTW_RUNNING)
  urtw_stop(sc);
 URTW_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
