#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ena_ring {int ring_size; TYPE_1__* free_rx_ids; TYPE_1__* rx_buffer_info; int /*<<< orphan*/  lro; } ;
struct ena_adapter {int /*<<< orphan*/  rx_buf_tag; struct ena_ring* rx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; int /*<<< orphan*/ * mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ena_adapter *adapter, unsigned int qid)
{
	struct ena_ring *rx_ring = &adapter->rx_ring[qid];

	/* Free buffer DMA maps, */
	for (int i = 0; i < rx_ring->ring_size; i++) {
		FUNC1(adapter->rx_buf_tag,
		    rx_ring->rx_buffer_info[i].map, BUS_DMASYNC_POSTREAD);
		FUNC4(rx_ring->rx_buffer_info[i].mbuf);
		rx_ring->rx_buffer_info[i].mbuf = NULL;
		FUNC2(adapter->rx_buf_tag,
		    rx_ring->rx_buffer_info[i].map);
		FUNC0(adapter->rx_buf_tag,
		    rx_ring->rx_buffer_info[i].map);
	}

	/* free LRO resources, */
	FUNC5(&rx_ring->lro);

	/* free allocated memory */
	FUNC3(rx_ring->rx_buffer_info, M_DEVBUF);
	rx_ring->rx_buffer_info = NULL;

	FUNC3(rx_ring->free_rx_ids, M_DEVBUF);
	rx_ring->free_rx_ids = NULL;
}