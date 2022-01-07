
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_status; int ifm_active; } ;
typedef int if_t ;


 int IFM_10G_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;

__attribute__((used)) static void
ptnet_media_status(if_t ifp, struct ifmediareq *ifmr)
{


 ifmr->ifm_status = IFM_AVALID | IFM_ACTIVE;
 ifmr->ifm_active = IFM_ETHER | IFM_10G_T | IFM_FDX;
}
