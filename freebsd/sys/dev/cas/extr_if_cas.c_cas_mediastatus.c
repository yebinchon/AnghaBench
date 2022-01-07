
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_flags; struct cas_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct cas_softc {TYPE_1__* sc_mii; } ;
struct TYPE_2__ {int mii_media_status; int mii_media_active; } ;


 int CAS_LOCK (struct cas_softc*) ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int IFF_UP ;
 int mii_pollstat (TYPE_1__*) ;

__attribute__((used)) static void
cas_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct cas_softc *sc = ifp->if_softc;

 CAS_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) == 0) {
  CAS_UNLOCK(sc);
  return;
 }

 mii_pollstat(sc->sc_mii);
 ifmr->ifm_active = sc->sc_mii->mii_media_active;
 ifmr->ifm_status = sc->sc_mii->mii_media_status;
 CAS_UNLOCK(sc);
}
