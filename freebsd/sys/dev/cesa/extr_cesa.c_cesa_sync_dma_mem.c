
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_dma_mem {int cdm_map; int cdm_tag; int * cdm_vaddr; } ;
typedef int bus_dmasync_op_t ;


 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static void
cesa_sync_dma_mem(struct cesa_dma_mem *cdm, bus_dmasync_op_t op)
{


        if (cdm->cdm_vaddr != ((void*)0))
  bus_dmamap_sync(cdm->cdm_tag, cdm->cdm_map, op);
}
