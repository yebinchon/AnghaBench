
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; } ;


 int iflib_dma_free (TYPE_1__*) ;

void
bnxt_free_hwrm_dma_mem(struct bnxt_softc *softc)
{
 if (softc->hwrm_cmd_resp.idi_vaddr)
  iflib_dma_free(&softc->hwrm_cmd_resp);
 softc->hwrm_cmd_resp.idi_vaddr = ((void*)0);
 return;
}
