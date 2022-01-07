
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_nrunning; struct bwn_softc* ic_softc; } ;
struct bwn_softc {int sc_flags; } ;


 int BWN_FLAG_RUNNING ;
 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int bwn_init (struct bwn_softc*) ;
 int bwn_stop (struct bwn_softc*) ;
 int bwn_update_promisc (struct ieee80211com*) ;
 int ieee80211_start_all (struct ieee80211com*) ;

__attribute__((used)) static void
bwn_parent(struct ieee80211com *ic)
{
 struct bwn_softc *sc = ic->ic_softc;
 int startall = 0;

 BWN_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  if ((sc->sc_flags & BWN_FLAG_RUNNING) == 0) {
   bwn_init(sc);
   startall = 1;
  } else
   bwn_update_promisc(ic);
 } else if (sc->sc_flags & BWN_FLAG_RUNNING)
  bwn_stop(sc);
 BWN_UNLOCK(sc);

 if (startall)
  ieee80211_start_all(ic);
}
