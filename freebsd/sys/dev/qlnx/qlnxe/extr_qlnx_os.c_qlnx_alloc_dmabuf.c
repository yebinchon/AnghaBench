
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent_tag; int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;
struct TYPE_7__ {scalar_t__ dma_addr; int dma_map; int dma_b; int dma_tag; int size; int alignment; } ;
typedef TYPE_2__ qlnx_dma_t ;
typedef int device_t ;
typedef int bus_size_t ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int QL_DPRINT1 (TYPE_1__*,char*) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,scalar_t__*,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int qlnx_dmamap_callback ;

__attribute__((used)) static int
qlnx_alloc_dmabuf(qlnx_host_t *ha, qlnx_dma_t *dma_buf)
{
        int ret = 0;
        device_t dev;
        bus_addr_t b_addr;

        dev = ha->pci_dev;

        ret = bus_dma_tag_create(
                        ha->parent_tag,
                        dma_buf->alignment,
                        ((bus_size_t)(1ULL << 32)),
                        BUS_SPACE_MAXADDR,
                        BUS_SPACE_MAXADDR,
                        ((void*)0), ((void*)0),
                        dma_buf->size,
                        1,
                        dma_buf->size,
                        0,
                        ((void*)0), ((void*)0),
                        &dma_buf->dma_tag);

        if (ret) {
                QL_DPRINT1(ha, "could not create dma tag\n");
                goto qlnx_alloc_dmabuf_exit;
        }
        ret = bus_dmamem_alloc(dma_buf->dma_tag,
                        (void **)&dma_buf->dma_b,
                        (BUS_DMA_ZERO | BUS_DMA_COHERENT | BUS_DMA_NOWAIT),
                        &dma_buf->dma_map);
        if (ret) {
                bus_dma_tag_destroy(dma_buf->dma_tag);
                QL_DPRINT1(ha, "bus_dmamem_alloc failed\n");
                goto qlnx_alloc_dmabuf_exit;
        }

        ret = bus_dmamap_load(dma_buf->dma_tag,
                        dma_buf->dma_map,
                        dma_buf->dma_b,
                        dma_buf->size,
                        qlnx_dmamap_callback,
                        &b_addr, BUS_DMA_NOWAIT);

        if (ret || !b_addr) {
                bus_dma_tag_destroy(dma_buf->dma_tag);
                bus_dmamem_free(dma_buf->dma_tag, dma_buf->dma_b,
                        dma_buf->dma_map);
                ret = -1;
                goto qlnx_alloc_dmabuf_exit;
        }

        dma_buf->dma_addr = b_addr;

qlnx_alloc_dmabuf_exit:

        return ret;
}
