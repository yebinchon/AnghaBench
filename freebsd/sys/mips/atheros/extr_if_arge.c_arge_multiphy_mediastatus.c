
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct arge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct arge_softc {int arge_media_type; int arge_duplex_mode; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;

void
arge_multiphy_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct arge_softc *sc = ifp->if_softc;

 ifmr->ifm_status = IFM_AVALID | IFM_ACTIVE;
 ifmr->ifm_active = IFM_ETHER | sc->arge_media_type |
     sc->arge_duplex_mode;
}
