#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct sw_rx_data {scalar_t__ map; scalar_t__ dma_addr; struct mbuf* data; } ;
struct qlnx_rx_queue {size_t sw_rx_prod; int /*<<< orphan*/  rx_bd_ring; struct sw_rx_data* sw_rx_ring; int /*<<< orphan*/  rx_buf_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_len; } ;
struct TYPE_9__ {void* lo; void* hi; } ;
struct eth_rx_bd {TYPE_2__ addr; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  rx_tag; struct ecore_dev cdev; } ;
typedef  TYPE_3__ qlnx_host_t ;
typedef  scalar_t__ dma_addr_t ;
typedef  scalar_t__ bus_dmamap_t ;
struct TYPE_11__ {scalar_t__ ds_addr; } ;
typedef  TYPE_4__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,struct mbuf*,TYPE_4__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 struct mbuf* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(qlnx_host_t *ha, struct qlnx_rx_queue *rxq)
{
        register struct mbuf	*mp;
        uint16_t		rx_buf_size;
        struct sw_rx_data	*sw_rx_data;
        struct eth_rx_bd	*rx_bd;
        dma_addr_t		dma_addr;
	bus_dmamap_t		map;
	bus_dma_segment_t       segs[1];
	int			nsegs;
	int			ret;
	struct ecore_dev	*cdev;

	cdev = &ha->cdev;

        rx_buf_size = rxq->rx_buf_size;

	mp = FUNC8(M_NOWAIT, MT_DATA, M_PKTHDR, rx_buf_size);

        if (mp == NULL) {
                FUNC0(ha, "Failed to allocate Rx data\n");
                return -ENOMEM;
        }

	mp->m_len = mp->m_pkthdr.len = rx_buf_size;

	map = (bus_dmamap_t)0;

	ret = FUNC3(ha->rx_tag, map, mp, segs, &nsegs,
			BUS_DMA_NOWAIT);
	dma_addr = segs[0].ds_addr;

	if (ret || !dma_addr || (nsegs != 1)) {
		FUNC7(mp);
		FUNC0(ha, "bus_dmamap_load failed[%d, 0x%016llx, %d]\n",
                           ret, (long long unsigned int)dma_addr, nsegs);
		return -ENOMEM;
	}

        sw_rx_data = &rxq->sw_rx_ring[rxq->sw_rx_prod];
        sw_rx_data->data = mp;
        sw_rx_data->dma_addr = dma_addr;
        sw_rx_data->map = map;

        /* Advance PROD and get BD pointer */
        rx_bd = (struct eth_rx_bd *)FUNC5(&rxq->rx_bd_ring);
        rx_bd->addr.hi = FUNC6(FUNC1(dma_addr));
        rx_bd->addr.lo = FUNC6(FUNC2(dma_addr));
	FUNC4(ha->rx_tag, map, BUS_DMASYNC_PREREAD);

        rxq->sw_rx_prod = (rxq->sw_rx_prod + 1) & (RX_RING_SIZE - 1);

        return 0;
}