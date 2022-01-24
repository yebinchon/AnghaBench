#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent_tag; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qlnx_host_t ;
struct TYPE_7__ {scalar_t__ dma_addr; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_b; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  size; int /*<<< orphan*/  alignment; } ;
typedef  TYPE_2__ qlnx_dma_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlnx_dmamap_callback ; 

__attribute__((used)) static int
FUNC6(qlnx_host_t *ha, qlnx_dma_t *dma_buf)
{
        int             ret = 0;
        device_t        dev;
        bus_addr_t      b_addr;

        dev = ha->pci_dev;

        ret = FUNC1(
                        ha->parent_tag,/* parent */
                        dma_buf->alignment,
                        ((bus_size_t)(1ULL << 32)),/* boundary */
                        BUS_SPACE_MAXADDR,      /* lowaddr */
                        BUS_SPACE_MAXADDR,      /* highaddr */
                        NULL, NULL,             /* filter, filterarg */
                        dma_buf->size,          /* maxsize */
                        1,                      /* nsegments */
                        dma_buf->size,          /* maxsegsize */
                        0,                      /* flags */
                        NULL, NULL,             /* lockfunc, lockarg */
                        &dma_buf->dma_tag);

        if (ret) {
                FUNC0(ha, "could not create dma tag\n");
                goto qlnx_alloc_dmabuf_exit;
        }
        ret = FUNC4(dma_buf->dma_tag,
                        (void **)&dma_buf->dma_b,
                        (BUS_DMA_ZERO | BUS_DMA_COHERENT | BUS_DMA_NOWAIT),
                        &dma_buf->dma_map);
        if (ret) {
                FUNC2(dma_buf->dma_tag);
                FUNC0(ha, "bus_dmamem_alloc failed\n");
                goto qlnx_alloc_dmabuf_exit;
        }

        ret = FUNC3(dma_buf->dma_tag,
                        dma_buf->dma_map,
                        dma_buf->dma_b,
                        dma_buf->size,
                        qlnx_dmamap_callback,
                        &b_addr, BUS_DMA_NOWAIT);

        if (ret || !b_addr) {
                FUNC2(dma_buf->dma_tag);
                FUNC5(dma_buf->dma_tag, dma_buf->dma_b,
                        dma_buf->dma_map);
                ret = -1;
                goto qlnx_alloc_dmabuf_exit;
        }

        dma_buf->dma_addr = b_addr;

qlnx_alloc_dmabuf_exit:

        return ret;
}