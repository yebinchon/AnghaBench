
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_flags; } ;
struct ieee80211com {int ic_curchan; struct uath_softc* ic_softc; } ;


 int UATH_FLAG_INITDONE ;
 int UATH_FLAG_INVALID ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int uath_switch_channel (struct uath_softc*,int ) ;

__attribute__((used)) static void
uath_set_channel(struct ieee80211com *ic)
{
 struct uath_softc *sc = ic->ic_softc;

 UATH_LOCK(sc);
 if ((sc->sc_flags & UATH_FLAG_INVALID) ||
     (sc->sc_flags & UATH_FLAG_INITDONE) == 0) {
  UATH_UNLOCK(sc);
  return;
 }
 (void)uath_switch_channel(sc, ic->ic_curchan);
 UATH_UNLOCK(sc);
}
