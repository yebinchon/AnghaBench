
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_active; int ifm_status; } ;
struct adapter {int link_speed; int link_active; } ;
typedef int if_ctx_t ;


 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10G_T ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int INIT_DEBUGOUT (char*) ;




 int iflib_admin_intr_deferred (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
ixv_if_media_status(if_ctx_t ctx, struct ifmediareq * ifmr)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 INIT_DEBUGOUT("ixv_media_status: begin");

 iflib_admin_intr_deferred(ctx);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (!adapter->link_active)
  return;

 ifmr->ifm_status |= IFM_ACTIVE;

 switch (adapter->link_speed) {
  case 128:
   ifmr->ifm_active |= IFM_1000_T | IFM_FDX;
   break;
  case 130:
   ifmr->ifm_active |= IFM_10G_T | IFM_FDX;
   break;
  case 131:
   ifmr->ifm_active |= IFM_100_TX | IFM_FDX;
   break;
  case 129:
   ifmr->ifm_active |= IFM_10_T | IFM_FDX;
   break;
 }
}
