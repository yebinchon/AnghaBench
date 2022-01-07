
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_active; } ;
typedef int if_t ;


 int IFM_ETHER ;
 int IFM_MANUAL ;

__attribute__((used)) static void
fxp_serial_ifmedia_sts(if_t ifp, struct ifmediareq *ifmr)
{

 ifmr->ifm_active = IFM_ETHER|IFM_MANUAL;
}
