
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_flags; } ;
struct ieee80211com {struct uath_softc* ic_softc; } ;


 int UATH_FLAG_INITDONE ;
 int UATH_FLAG_INVALID ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int uath_set_rxmulti_filter (struct uath_softc*) ;

__attribute__((used)) static void
uath_update_mcast(struct ieee80211com *ic)
{
 struct uath_softc *sc = ic->ic_softc;

 UATH_LOCK(sc);
 if ((sc->sc_flags & UATH_FLAG_INVALID) ||
     (sc->sc_flags & UATH_FLAG_INITDONE) == 0) {
  UATH_UNLOCK(sc);
  return;
 }




 if (sc->sc_flags & UATH_FLAG_INITDONE)
  (void)uath_set_rxmulti_filter(sc);
 UATH_UNLOCK(sc);
}
