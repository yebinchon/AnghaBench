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
struct al_udma_q_params {int /*<<< orphan*/ * desc_base; int /*<<< orphan*/  desc_phy_base_map; int /*<<< orphan*/  desc_phy_base_tag; } ;
struct al_eth_ring {int sw_count; int /*<<< orphan*/  br_mtx; TYPE_1__* tx_buffer_info; int /*<<< orphan*/  dma_buf_tag; int /*<<< orphan*/ * br; int /*<<< orphan*/  enqueue_tq; int /*<<< orphan*/  enqueue_task; int /*<<< orphan*/  cmpl_tq; int /*<<< orphan*/  cmpl_task; struct al_udma_q_params q_params; } ;
struct al_eth_adapter {int /*<<< orphan*/  netdev; struct al_eth_ring* tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_IFAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct al_eth_adapter *adapter, int qid)
{
	struct al_eth_ring *tx_ring = &adapter->tx_ring[qid];
	struct al_udma_q_params *q_params = &tx_ring->q_params;
	int size;

	/* At this point interrupts' handlers must be deactivated */
	while (FUNC9(tx_ring->cmpl_tq, &tx_ring->cmpl_task, NULL))
		FUNC10(tx_ring->cmpl_tq, &tx_ring->cmpl_task);

	FUNC11(tx_ring->cmpl_tq);
	while (FUNC9(tx_ring->enqueue_tq,
	    &tx_ring->enqueue_task, NULL)) {
		FUNC10(tx_ring->enqueue_tq, &tx_ring->enqueue_task);
	}

	FUNC11(tx_ring->enqueue_tq);

	if (tx_ring->br != NULL) {
		FUNC5(adapter->netdev, tx_ring->br);
		FUNC1(tx_ring->br, M_DEVBUF);
	}

	for (size = 0; size < tx_ring->sw_count; size++) {
		FUNC7(tx_ring->tx_buffer_info[size].m);
		tx_ring->tx_buffer_info[size].m = NULL;

		FUNC4(tx_ring->dma_buf_tag,
		    tx_ring->tx_buffer_info[size].dma_map);
		FUNC3(tx_ring->dma_buf_tag,
		    tx_ring->tx_buffer_info[size].dma_map);
	}
	FUNC2(tx_ring->dma_buf_tag);

	FUNC6(tx_ring->tx_buffer_info, M_IFAL);
	tx_ring->tx_buffer_info = NULL;

	FUNC8(&tx_ring->br_mtx);

	/* if not set, then don't free */
	if (q_params->desc_base == NULL)
		return;

	FUNC0(q_params->desc_phy_base_tag,
	    q_params->desc_phy_base_map, q_params->desc_base);

	q_params->desc_base = NULL;
}