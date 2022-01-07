
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* if_softc_ctx_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_4__ {scalar_t__ isc_max_frame_size; } ;
struct TYPE_5__ {scalar_t__ ifc_rx_mbuf_sz; TYPE_1__ ifc_softc_ctx; } ;


 scalar_t__ MCLBYTES ;
 scalar_t__ MJUMPAGESIZE ;

__attribute__((used)) static void
iflib_calc_rx_mbuf_sz(if_ctx_t ctx)
{
 if_softc_ctx_t sctx = &ctx->ifc_softc_ctx;





 if (sctx->isc_max_frame_size <= MCLBYTES)
  ctx->ifc_rx_mbuf_sz = MCLBYTES;
 else
  ctx->ifc_rx_mbuf_sz = MJUMPAGESIZE;
}
