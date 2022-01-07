
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_flags; } ;
struct ieee80211com {struct urtw_softc* ic_softc; } ;


 int URTW_LOCK (struct urtw_softc*) ;
 int URTW_RUNNING ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int urtw_rx_setconf (struct urtw_softc*) ;

__attribute__((used)) static void
urtw_update_promisc(struct ieee80211com *ic)
{
 struct urtw_softc *sc = ic->ic_softc;

 URTW_LOCK(sc);
 if (sc->sc_flags & URTW_RUNNING)
  urtw_rx_setconf(sc);
 URTW_UNLOCK(sc);
}
