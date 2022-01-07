
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_softc {scalar_t__ ndis_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct ndis_softc* ic_softc; } ;


 int ndis_init (struct ndis_softc*) ;
 int ndis_stop (struct ndis_softc*) ;

__attribute__((used)) static void
ndis_80211parent(struct ieee80211com *ic)
{
 struct ndis_softc *sc = ic->ic_softc;


 if (ic->ic_nrunning > 0) {
  if (!sc->ndis_running)
   ndis_init(sc);
 } else if (sc->ndis_running)
  ndis_stop(sc);

}
