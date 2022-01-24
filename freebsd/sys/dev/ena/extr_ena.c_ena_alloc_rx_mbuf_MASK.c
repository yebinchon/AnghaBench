#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct ena_com_buf {int len; scalar_t__ paddr; } ;
struct ena_rx_buffer {TYPE_4__* mbuf; struct ena_com_buf ena_buf; int /*<<< orphan*/  map; } ;
struct TYPE_10__ {int /*<<< orphan*/  dma_mapping_err; int /*<<< orphan*/  mbuf_alloc_fail; int /*<<< orphan*/  mjum_alloc_fail; } ;
struct ena_ring {TYPE_2__ rx_stats; } ;
struct ena_adapter {int /*<<< orphan*/  rx_buf_tag; } ;
struct TYPE_11__ {scalar_t__ ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;
struct TYPE_9__ {int len; } ;
struct TYPE_12__ {int m_len; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int EFAULT ; 
 int ENA_DBG ; 
 int ENA_RSC ; 
 int ENA_RXPTH ; 
 int /*<<< orphan*/  ENA_WARNING ; 
 int ENOMEM ; 
 int MCLBYTES ; 
 int MJUM16BYTES ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int
FUNC8(struct ena_adapter *adapter,
    struct ena_ring *rx_ring, struct ena_rx_buffer *rx_info)
{
	struct ena_com_buf *ena_buf;
	bus_dma_segment_t segs[1];
	int nsegs, error;
	int mlen;

	/* if previous allocated frag is not used */
	if (FUNC7(rx_info->mbuf != NULL))
		return (0);

	/* Get mbuf using UMA allocator */
	rx_info->mbuf = FUNC6(M_NOWAIT, MT_DATA, M_PKTHDR, MJUM16BYTES);

	if (FUNC7(rx_info->mbuf == NULL)) {
		FUNC2(rx_ring->rx_stats.mjum_alloc_fail, 1);
		rx_info->mbuf = FUNC5(M_NOWAIT, MT_DATA, M_PKTHDR);
		if (FUNC7(rx_info->mbuf == NULL)) {
			FUNC2(rx_ring->rx_stats.mbuf_alloc_fail, 1);
			return (ENOMEM);
		}
		mlen = MCLBYTES;
	} else {
		mlen = MJUM16BYTES;
	}
	/* Set mbuf length*/
	rx_info->mbuf->m_pkthdr.len = rx_info->mbuf->m_len = mlen;

	/* Map packets for DMA */
	FUNC3(ENA_DBG | ENA_RSC | ENA_RXPTH,
	    "Using tag %p for buffers' DMA mapping, mbuf %p len: %d\n",
	    adapter->rx_buf_tag,rx_info->mbuf, rx_info->mbuf->m_len);
	error = FUNC0(adapter->rx_buf_tag, rx_info->map,
	    rx_info->mbuf, segs, &nsegs, BUS_DMA_NOWAIT);
	if (FUNC7((error != 0) || (nsegs != 1))) {
		FUNC3(ENA_WARNING, "failed to map mbuf, error: %d, "
		    "nsegs: %d\n", error, nsegs);
		FUNC2(rx_ring->rx_stats.dma_mapping_err, 1);
		goto exit;

	}

	FUNC1(adapter->rx_buf_tag, rx_info->map, BUS_DMASYNC_PREREAD);

	ena_buf = &rx_info->ena_buf;
	ena_buf->paddr = segs[0].ds_addr;
	ena_buf->len = mlen;

	FUNC3(ENA_DBG | ENA_RSC | ENA_RXPTH,
	    "ALLOC RX BUF: mbuf %p, rx_info %p, len %d, paddr %#jx\n",
	    rx_info->mbuf, rx_info,ena_buf->len, (uintmax_t)ena_buf->paddr);

	return (0);

exit:
	FUNC4(rx_info->mbuf);
	rx_info->mbuf = NULL;
	return (EFAULT);
}