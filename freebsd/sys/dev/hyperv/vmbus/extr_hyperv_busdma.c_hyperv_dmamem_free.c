
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyperv_dma {int hv_dtag; int hv_dmap; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

void
hyperv_dmamem_free(struct hyperv_dma *dma, void *ptr)
{
 bus_dmamap_unload(dma->hv_dtag, dma->hv_dmap);
 bus_dmamem_free(dma->hv_dtag, ptr, dma->hv_dmap);
 bus_dma_tag_destroy(dma->hv_dtag);
}
