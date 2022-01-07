
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int hwrm_cmd_resp; int ctx; } ;


 int BUS_DMA_NOWAIT ;
 int PAGE_SIZE ;
 int iflib_dma_alloc (int ,int ,int *,int ) ;

int
bnxt_alloc_hwrm_dma_mem(struct bnxt_softc *softc)
{
 int rc;

 rc = iflib_dma_alloc(softc->ctx, PAGE_SIZE, &softc->hwrm_cmd_resp,
     BUS_DMA_NOWAIT);
 return rc;
}
