
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int sc_flags; int (* sc_mediastatus ) (struct lance_softc*,struct ifmediareq*) ;} ;
struct ifnet {int if_flags; struct lance_softc* if_softc; } ;
struct ifmediareq {int ifm_status; } ;


 int IFF_UP ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int LE_CARRIER ;
 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int stub1 (struct lance_softc*,struct ifmediareq*) ;

__attribute__((used)) static void
lance_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct lance_softc *sc = ifp->if_softc;

 LE_LOCK(sc);
 if (!(ifp->if_flags & IFF_UP)) {
  LE_UNLOCK(sc);
  return;
 }

 ifmr->ifm_status = IFM_AVALID;
 if (sc->sc_flags & LE_CARRIER)
  ifmr->ifm_status |= IFM_ACTIVE;

 if (sc->sc_mediastatus)
  (*sc->sc_mediastatus)(sc, ifmr);
 LE_UNLOCK(sc);
}
