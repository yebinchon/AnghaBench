
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;

__attribute__((used)) static void
vxlan_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{

 ifmr->ifm_status = IFM_ACTIVE | IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER | IFM_FDX;
}
