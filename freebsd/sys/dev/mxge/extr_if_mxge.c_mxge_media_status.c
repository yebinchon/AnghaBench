
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {TYPE_1__* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct TYPE_2__ {int current_media; scalar_t__ link_state; } ;
typedef TYPE_1__ mxge_softc_t ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;

__attribute__((used)) static void
mxge_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 mxge_softc_t *sc = ifp->if_softc;


 if (sc == ((void*)0))
  return;
 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER | IFM_FDX;
 ifmr->ifm_status |= sc->link_state ? IFM_ACTIVE : 0;
 ifmr->ifm_active |= sc->current_media;
}
