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
struct al_udma_q_params {scalar_t__ cdesc_phy_base; int /*<<< orphan*/ * cdesc_base; int /*<<< orphan*/  cdesc_phy_base_map; int /*<<< orphan*/  cdesc_phy_base_tag; int /*<<< orphan*/ * desc_base; int /*<<< orphan*/  desc_phy_base_map; int /*<<< orphan*/  desc_phy_base_tag; } ;
struct al_eth_ring {int sw_count; int /*<<< orphan*/  lro; TYPE_1__* rx_buffer_info; int /*<<< orphan*/  dma_buf_tag; int /*<<< orphan*/  enqueue_tq; int /*<<< orphan*/  enqueue_task; struct al_udma_q_params q_params; } ;
struct al_eth_adapter {struct al_eth_ring* rx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IFAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct al_eth_adapter *adapter, unsigned int qid)
{
	struct al_eth_ring *rx_ring = &adapter->rx_ring[qid];
	struct al_udma_q_params *q_params = &rx_ring->q_params;
	int size;

	/* At this point interrupts' handlers must be deactivated */
	while (FUNC6(rx_ring->enqueue_tq,
	    &rx_ring->enqueue_task, NULL)) {
		FUNC7(rx_ring->enqueue_tq, &rx_ring->enqueue_task);
	}

	FUNC8(rx_ring->enqueue_tq);

	for (size = 0; size < rx_ring->sw_count; size++) {
		FUNC5(rx_ring->rx_buffer_info[size].m);
		rx_ring->rx_buffer_info[size].m = NULL;
		FUNC3(rx_ring->dma_buf_tag,
		    rx_ring->rx_buffer_info[size].dma_map);
		FUNC2(rx_ring->dma_buf_tag,
		    rx_ring->rx_buffer_info[size].dma_map);
	}
	FUNC1(rx_ring->dma_buf_tag);

	FUNC4(rx_ring->rx_buffer_info, M_IFAL);
	rx_ring->rx_buffer_info = NULL;

	/* if not set, then don't free */
	if (q_params->desc_base == NULL)
		return;

	FUNC0(q_params->desc_phy_base_tag,
	    q_params->desc_phy_base_map, q_params->desc_base);

	q_params->desc_base = NULL;

	/* if not set, then don't free */
	if (q_params->cdesc_base == NULL)
		return;

	FUNC0(q_params->cdesc_phy_base_tag,
	    q_params->cdesc_phy_base_map, q_params->cdesc_base);

	q_params->cdesc_phy_base = 0;

	/* Free LRO resources */
	FUNC9(&rx_ring->lro);
}