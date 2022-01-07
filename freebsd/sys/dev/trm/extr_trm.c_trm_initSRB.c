
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int16_t ;
struct TYPE_6__ {int buffer_dmat; int * pFreeSRB; int sg_dmat; } ;
struct TYPE_5__ {size_t TagNumber; int dmamap; int * pNextSRB; int pSRBSGL; int sg_dmamap; } ;
typedef int SGentry ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PACB ;


 int BUS_DMA_NOWAIT ;
 int ENXIO ;
 int TRM_MAX_SG_LISTENTRY ;
 size_t TRM_MAX_SRB_CNT ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,TYPE_1__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int trm_srbmapSG ;

__attribute__((used)) static int
trm_initSRB(PACB pACB)
{
     u_int16_t i;
 PSRB pSRB;
 int error;

 for (i = 0; i < TRM_MAX_SRB_CNT; i++) {
         pSRB = (PSRB)&pACB->pFreeSRB[i];

  if (bus_dmamem_alloc(pACB->sg_dmat, (void **)&pSRB->pSRBSGL,
      BUS_DMA_NOWAIT, &pSRB->sg_dmamap) !=0 ) {
   return ENXIO;
  }
  bus_dmamap_load(pACB->sg_dmat, pSRB->sg_dmamap, pSRB->pSRBSGL,
      TRM_MAX_SG_LISTENTRY * sizeof(SGentry),
      trm_srbmapSG, pSRB, 0);
  if (i != TRM_MAX_SRB_CNT - 1) {



   pSRB->pNextSRB = &pACB->pFreeSRB[i+1];
  } else {



   pSRB->pNextSRB = ((void*)0);
  }
  pSRB->TagNumber = i;




  if ((error = bus_dmamap_create(pACB->buffer_dmat, 0,
            &pSRB->dmamap)) != 0)
   return (error);

 }
 return (0);
}
