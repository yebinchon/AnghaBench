
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gx_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct gx_softc {int dummy; } ;


 int IFM_1000_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 int IFT_ETHER ;

__attribute__((used)) static void
gx_medstat(struct ifnet *ifp, struct ifmediareq *ifm)
{
 struct gx_softc *sc;

 sc = ifp->if_softc;


 ifm->ifm_status = IFM_AVALID | IFM_ACTIVE;
 ifm->ifm_active = IFT_ETHER | IFM_1000_T | IFM_FDX;
}
