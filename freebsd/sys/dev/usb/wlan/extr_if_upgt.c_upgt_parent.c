
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_allmulti; scalar_t__ ic_promisc; struct upgt_softc* ic_softc; } ;


 int UPGT_FLAG_DETACHED ;
 int UPGT_FLAG_INITDONE ;
 int UPGT_LOCK (struct upgt_softc*) ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int upgt_init (struct upgt_softc*) ;
 int upgt_set_multi (struct upgt_softc*) ;
 int upgt_stop (struct upgt_softc*) ;

__attribute__((used)) static void
upgt_parent(struct ieee80211com *ic)
{
 struct upgt_softc *sc = ic->ic_softc;
 int startall = 0;

 UPGT_LOCK(sc);
 if (sc->sc_flags & UPGT_FLAG_DETACHED) {
  UPGT_UNLOCK(sc);
  return;
 }
 if (ic->ic_nrunning > 0) {
  if (sc->sc_flags & UPGT_FLAG_INITDONE) {
   if (ic->ic_allmulti > 0 || ic->ic_promisc > 0)
    upgt_set_multi(sc);
  } else {
   upgt_init(sc);
   startall = 1;
  }
 } else if (sc->sc_flags & UPGT_FLAG_INITDONE)
  upgt_stop(sc);
 UPGT_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
