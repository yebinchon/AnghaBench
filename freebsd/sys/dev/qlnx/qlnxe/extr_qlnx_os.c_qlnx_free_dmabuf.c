
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qlnx_host_t ;
struct TYPE_3__ {int dma_tag; int dma_map; int dma_b; } ;
typedef TYPE_1__ qlnx_dma_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
qlnx_free_dmabuf(qlnx_host_t *ha, qlnx_dma_t *dma_buf)
{
 bus_dmamap_unload(dma_buf->dma_tag, dma_buf->dma_map);
        bus_dmamem_free(dma_buf->dma_tag, dma_buf->dma_b, dma_buf->dma_map);
        bus_dma_tag_destroy(dma_buf->dma_tag);
 return;
}
