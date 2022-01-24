#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct sw_rx_data {scalar_t__ map; scalar_t__ dma_addr; struct mbuf* data; } ;
struct qlnx_agg_info {struct sw_rx_data rx_buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  rx_tag; } ;
typedef  TYPE_2__ qlnx_host_t ;
typedef  scalar_t__ dma_addr_t ;
typedef  scalar_t__ bus_dmamap_t ;
struct TYPE_9__ {scalar_t__ ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,struct mbuf*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sw_rx_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(qlnx_host_t *ha, uint16_t rx_buf_size,
	struct qlnx_agg_info *tpa)
{
	struct mbuf		*mp;
        dma_addr_t		dma_addr;
	bus_dmamap_t		map;
	bus_dma_segment_t       segs[1];
	int			nsegs;
	int			ret;
        struct sw_rx_data	*rx_buf;

	mp = FUNC4(M_NOWAIT, MT_DATA, M_PKTHDR, rx_buf_size);

        if (mp == NULL) {
                FUNC0(ha, "Failed to allocate Rx data\n");
                return -ENOMEM;
        }

	mp->m_len = mp->m_pkthdr.len = rx_buf_size;

	map = (bus_dmamap_t)0;

	ret = FUNC1(ha->rx_tag, map, mp, segs, &nsegs,
			BUS_DMA_NOWAIT);
	dma_addr = segs[0].ds_addr;

	if (ret || !dma_addr || (nsegs != 1)) {
		FUNC3(mp);
		FUNC0(ha, "bus_dmamap_load failed[%d, 0x%016llx, %d]\n",
			ret, (long long unsigned int)dma_addr, nsegs);
		return -ENOMEM;
	}

        rx_buf = &tpa->rx_buf;

	FUNC5(rx_buf, 0, sizeof (struct sw_rx_data));

        rx_buf->data = mp;
        rx_buf->dma_addr = dma_addr;
        rx_buf->map = map;

	FUNC2(ha->rx_tag, map, BUS_DMASYNC_PREREAD);

	return (0);
}