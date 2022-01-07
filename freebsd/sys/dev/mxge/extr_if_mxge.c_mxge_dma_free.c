
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dmat; int map; int addr; } ;
typedef TYPE_1__ mxge_dma_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
mxge_dma_free(mxge_dma_t *dma)
{
 bus_dmamap_unload(dma->dmat, dma->map);
 bus_dmamem_free(dma->dmat, dma->addr, dma->map);
 (void)bus_dma_tag_destroy(dma->dmat);
}
