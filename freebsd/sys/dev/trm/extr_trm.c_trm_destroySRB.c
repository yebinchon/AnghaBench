
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buffer_dmat; int sg_dmat; TYPE_1__* pFreeSRB; } ;
struct TYPE_4__ {struct TYPE_4__* pNextSRB; scalar_t__ dmamap; int sg_dmamap; scalar_t__ pSRBSGL; scalar_t__ SRBSGPhyAddr; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PACB ;


 int bus_dmamap_destroy (int ,scalar_t__) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,scalar_t__,int ) ;

__attribute__((used)) static void
trm_destroySRB(PACB pACB)
{
 PSRB pSRB;

 pSRB = pACB->pFreeSRB;
 while (pSRB) {
  if (pSRB->SRBSGPhyAddr)
   bus_dmamap_unload(pACB->sg_dmat, pSRB->sg_dmamap);
  if (pSRB->pSRBSGL)
   bus_dmamem_free(pACB->sg_dmat, pSRB->pSRBSGL,
       pSRB->sg_dmamap);
  if (pSRB->dmamap)
   bus_dmamap_destroy(pACB->buffer_dmat, pSRB->dmamap);
  pSRB = pSRB->pNextSRB;
 }
}
