
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct uath_softc* ic_softc; } ;


 int UATH_FLAG_INITDONE ;
 int UATH_FLAG_INVALID ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int uath_init (struct uath_softc*) ;
 int uath_stop (struct uath_softc*) ;

__attribute__((used)) static void
uath_parent(struct ieee80211com *ic)
{
 struct uath_softc *sc = ic->ic_softc;
 int startall = 0;

 UATH_LOCK(sc);
 if (sc->sc_flags & UATH_FLAG_INVALID) {
  UATH_UNLOCK(sc);
  return;
 }

 if (ic->ic_nrunning > 0) {
  if (!(sc->sc_flags & UATH_FLAG_INITDONE)) {
   uath_init(sc);
   startall = 1;
  }
 } else if (sc->sc_flags & UATH_FLAG_INITDONE)
  uath_stop(sc);
 UATH_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
