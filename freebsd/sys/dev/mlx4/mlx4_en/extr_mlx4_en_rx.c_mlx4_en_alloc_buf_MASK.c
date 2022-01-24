#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* segs; struct mbuf* mbuf; int /*<<< orphan*/  dma_map; } ;
struct mlx4_en_rx_ring {TYPE_1__ spare; void* rx_mr_key_be; int /*<<< orphan*/  dma_tag; } ;
struct mlx4_en_rx_mbuf {struct mbuf* mbuf; int /*<<< orphan*/  dma_map; } ;
struct mlx4_en_rx_desc {TYPE_2__* data; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
struct TYPE_7__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;
struct TYPE_6__ {void* addr; void* lkey; void* byte_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 int MLX4_EN_MAX_RX_SEGS ; 
 scalar_t__ MLX4_EN_MEMTYPE_PAD ; 
 int /*<<< orphan*/  MLX4_NET_IP_ALIGN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 struct mbuf* FUNC8 (struct mlx4_en_rx_ring*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct mlx4_en_rx_ring *ring, struct mlx4_en_rx_desc *rx_desc,
    struct mlx4_en_rx_mbuf *mb_list)
{
	bus_dma_segment_t segs[MLX4_EN_MAX_RX_SEGS];
	bus_dmamap_t map;
	struct mbuf *mb;
	int nsegs;
	int err;
#if (MLX4_EN_MAX_RX_SEGS != 1)
	int i;
#endif

	/* try to allocate a new spare mbuf */
	if (FUNC9(ring->spare.mbuf == NULL)) {
		mb = FUNC8(ring);
		if (FUNC9(mb == NULL))
			return (-ENOMEM);

		/* make sure IP header gets aligned */
		FUNC6(mb, MLX4_NET_IP_ALIGN);

		/* load spare mbuf into BUSDMA */
		err = -FUNC0(ring->dma_tag, ring->spare.dma_map,
		    mb, ring->spare.segs, &nsegs, BUS_DMA_NOWAIT);
		if (FUNC9(err != 0)) {
			FUNC7(mb);
			return (err);
		}

		/* store spare info */
		ring->spare.mbuf = mb;

#if (MLX4_EN_MAX_RX_SEGS != 1)
		/* zero remaining segs */
		for (i = nsegs; i != MLX4_EN_MAX_RX_SEGS; i++) {
			ring->spare.segs[i].ds_addr = 0;
			ring->spare.segs[i].ds_len = 0;
		}
#endif
		FUNC1(ring->dma_tag, ring->spare.dma_map,
		    BUS_DMASYNC_PREREAD);
	}

	/* synchronize and unload the current mbuf, if any */
	if (FUNC5(mb_list->mbuf != NULL)) {
		FUNC1(ring->dma_tag, mb_list->dma_map,
		    BUS_DMASYNC_POSTREAD);
		FUNC2(ring->dma_tag, mb_list->dma_map);
	}

	mb = FUNC8(ring);
	if (FUNC9(mb == NULL))
		goto use_spare;

	/* make sure IP header gets aligned */
	FUNC6(mb, MLX4_NET_IP_ALIGN);

	err = -FUNC0(ring->dma_tag, mb_list->dma_map,
	    mb, segs, &nsegs, BUS_DMA_NOWAIT);
	if (FUNC9(err != 0)) {
		FUNC7(mb);
		goto use_spare;
	}

#if (MLX4_EN_MAX_RX_SEGS == 1)
	rx_desc->data[0].addr = cpu_to_be64(segs[0].ds_addr);
#else
	for (i = 0; i != nsegs; i++) {
		rx_desc->data[i].byte_count = FUNC3(segs[i].ds_len);
		rx_desc->data[i].lkey = ring->rx_mr_key_be;
		rx_desc->data[i].addr = FUNC4(segs[i].ds_addr);
	}
	for (; i != MLX4_EN_MAX_RX_SEGS; i++) {
		rx_desc->data[i].byte_count = 0;
		rx_desc->data[i].lkey = FUNC3(MLX4_EN_MEMTYPE_PAD);
		rx_desc->data[i].addr = 0;
	}
#endif
	mb_list->mbuf = mb;

	FUNC1(ring->dma_tag, mb_list->dma_map, BUS_DMASYNC_PREREAD);
	return (0);

use_spare:
	/* swap DMA maps */
	map = mb_list->dma_map;
	mb_list->dma_map = ring->spare.dma_map;
	ring->spare.dma_map = map;

	/* swap MBUFs */
	mb_list->mbuf = ring->spare.mbuf;
	ring->spare.mbuf = NULL;

	/* store physical address */
#if (MLX4_EN_MAX_RX_SEGS == 1)
	rx_desc->data[0].addr = cpu_to_be64(ring->spare.segs[0].ds_addr);
#else
	for (i = 0; i != MLX4_EN_MAX_RX_SEGS; i++) {
		if (ring->spare.segs[i].ds_len != 0) {
			rx_desc->data[i].byte_count = FUNC3(ring->spare.segs[i].ds_len);
			rx_desc->data[i].lkey = ring->rx_mr_key_be;
			rx_desc->data[i].addr = FUNC4(ring->spare.segs[i].ds_addr);
		} else {
			rx_desc->data[i].byte_count = 0;
			rx_desc->data[i].lkey = FUNC3(MLX4_EN_MEMTYPE_PAD);
			rx_desc->data[i].addr = 0;
		}
	}
#endif
	return (0);
}