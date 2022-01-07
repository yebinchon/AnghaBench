
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_short_cmd_req_addr; } ;


 int iflib_dma_free (TYPE_1__*) ;

__attribute__((used)) static void bnxt_free_hwrm_short_cmd_req(struct bnxt_softc *softc)
{
 if (softc->hwrm_short_cmd_req_addr.idi_vaddr)
  iflib_dma_free(&softc->hwrm_short_cmd_req_addr);
 softc->hwrm_short_cmd_req_addr.idi_vaddr = ((void*)0);
}
