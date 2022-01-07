
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_status; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;

__attribute__((used)) static void
tracer_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{

 ifmr->ifm_status = IFM_AVALID | IFM_ACTIVE;

 return;
}
