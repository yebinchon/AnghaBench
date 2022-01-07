
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int hwrm_short_cmd_req_addr; int hwrm_max_req_len; int ctx; } ;


 int BUS_DMA_NOWAIT ;
 int iflib_dma_alloc (int ,int ,int *,int ) ;

__attribute__((used)) static int bnxt_alloc_hwrm_short_cmd_req(struct bnxt_softc *softc)
{
 int rc;

 rc = iflib_dma_alloc(softc->ctx, softc->hwrm_max_req_len,
     &softc->hwrm_short_cmd_req_addr, BUS_DMA_NOWAIT);

 return rc;
}
