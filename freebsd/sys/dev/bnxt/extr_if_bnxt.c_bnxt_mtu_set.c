
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct bnxt_softc {TYPE_1__* scctx; } ;
typedef int if_ctx_t ;
struct TYPE_2__ {scalar_t__ isc_max_frame_size; } ;


 scalar_t__ BNXT_MAX_MTU ;
 int EINVAL ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
bnxt_mtu_set(if_ctx_t ctx, uint32_t mtu)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);

 if (mtu > BNXT_MAX_MTU)
  return EINVAL;

 softc->scctx->isc_max_frame_size = mtu + ETHER_HDR_LEN + ETHER_CRC_LEN;
 return 0;
}
