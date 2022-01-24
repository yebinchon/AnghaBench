#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint16_t ;
struct al_eth_rx_buffer {int /*<<< orphan*/  al_buf; } ;
struct al_eth_ring {size_t next_to_use; int /*<<< orphan*/  dma_q; struct al_eth_rx_buffer* rx_buffer_info; } ;
struct al_eth_adapter {int /*<<< orphan*/  dev; struct al_eth_ring* rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_RX_FLAGS_INT ; 
 size_t FUNC0 (struct al_eth_ring*,size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct al_eth_adapter*,struct al_eth_ring*,struct al_eth_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 

__attribute__((used)) static int
FUNC8(struct al_eth_adapter *adapter, unsigned int qid,
    unsigned int num)
{
	struct al_eth_ring *rx_ring = &adapter->rx_ring[qid];
	uint16_t next_to_use;
	unsigned int i;

	next_to_use = rx_ring->next_to_use;

	for (i = 0; i < num; i++) {
		int rc;
		struct al_eth_rx_buffer *rx_info =
		    &rx_ring->rx_buffer_info[next_to_use];

		if (FUNC1(FUNC3(adapter,
		    rx_ring, rx_info) < 0)) {
			FUNC7(adapter->dev,
			    "failed to alloc buffer for rx queue %d\n", qid);
			break;
		}

		rc = FUNC5(rx_ring->dma_q,
		    &rx_info->al_buf, AL_ETH_RX_FLAGS_INT, NULL);
		if (FUNC1(rc)) {
			FUNC7(adapter->dev,
			    "failed to add buffer for rx queue %d\n", qid);
			break;
		}

		next_to_use = FUNC0(rx_ring, next_to_use);
	}

	if (FUNC1(i < num))
		FUNC7(adapter->dev,
		    "refilled rx queue %d with %d pages only - available %d\n",
		    qid, i, FUNC6(rx_ring->dma_q));

	if (FUNC2(i))
		FUNC4(rx_ring->dma_q, i);

	rx_ring->next_to_use = next_to_use;

	return (i);
}