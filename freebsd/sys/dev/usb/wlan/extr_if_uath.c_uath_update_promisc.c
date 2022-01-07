
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_flags; } ;
struct ieee80211com {struct uath_softc* ic_softc; } ;


 int UATH_FILTER_OP_SET ;
 int UATH_FILTER_RX_BCAST ;
 int UATH_FILTER_RX_BEACON ;
 int UATH_FILTER_RX_MCAST ;
 int UATH_FILTER_RX_PROM ;
 int UATH_FILTER_RX_UCAST ;
 int UATH_FLAG_INITDONE ;
 int UATH_FLAG_INVALID ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int uath_set_rxfilter (struct uath_softc*,int,int ) ;

__attribute__((used)) static void
uath_update_promisc(struct ieee80211com *ic)
{
 struct uath_softc *sc = ic->ic_softc;

 UATH_LOCK(sc);
 if ((sc->sc_flags & UATH_FLAG_INVALID) ||
     (sc->sc_flags & UATH_FLAG_INITDONE) == 0) {
  UATH_UNLOCK(sc);
  return;
 }
 if (sc->sc_flags & UATH_FLAG_INITDONE) {
  uath_set_rxfilter(sc,
      UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
      UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON |
      UATH_FILTER_RX_PROM, UATH_FILTER_OP_SET);
 }
 UATH_UNLOCK(sc);
}
