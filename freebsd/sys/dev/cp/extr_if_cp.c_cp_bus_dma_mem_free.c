
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dmat; int mapp; int virt; } ;
typedef TYPE_1__ cp_dma_mem_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
cp_bus_dma_mem_free (cp_dma_mem_t *dmem)
{
 bus_dmamap_unload (dmem->dmat, dmem->mapp);
 bus_dmamem_free (dmem->dmat, dmem->virt, dmem->mapp);
 bus_dma_tag_destroy (dmem->dmat);
}
