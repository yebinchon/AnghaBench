
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_MANUAL ;

__attribute__((used)) static void
xn_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{

 ifmr->ifm_status = IFM_AVALID|IFM_ACTIVE;
 ifmr->ifm_active = IFM_ETHER|IFM_MANUAL;
}
