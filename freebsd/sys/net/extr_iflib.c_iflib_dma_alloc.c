
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int iflib_dma_info_t ;
typedef TYPE_1__* if_shared_ctx_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_6__ {TYPE_1__* ifc_sctx; } ;
struct TYPE_5__ {scalar_t__ isc_q_align; } ;


 int KASSERT (int,char*) ;
 int iflib_dma_alloc_align (TYPE_2__*,int,scalar_t__,int ,int) ;

int
iflib_dma_alloc(if_ctx_t ctx, int size, iflib_dma_info_t dma, int mapflags)
{
 if_shared_ctx_t sctx = ctx->ifc_sctx;

 KASSERT(sctx->isc_q_align != 0, ("alignment value not initialized"));

 return (iflib_dma_alloc_align(ctx, size, sctx->isc_q_align, dma, mapflags));
}
