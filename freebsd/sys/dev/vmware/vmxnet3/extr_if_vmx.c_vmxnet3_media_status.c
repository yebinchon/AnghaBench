
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int dummy; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
typedef int if_ctx_t ;


 int IFM_ACTIVE ;
 int IFM_AUTO ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_NONE ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 scalar_t__ vmxnet3_link_is_up (struct vmxnet3_softc*) ;

__attribute__((used)) static void
vmxnet3_media_status(if_ctx_t ctx, struct ifmediareq * ifmr)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (vmxnet3_link_is_up(sc) != 0) {
  ifmr->ifm_status |= IFM_ACTIVE;
  ifmr->ifm_active |= IFM_AUTO;
 } else
  ifmr->ifm_active |= IFM_NONE;
}
