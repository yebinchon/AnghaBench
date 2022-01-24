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
struct rx_ring {int /*<<< orphan*/  tail; int /*<<< orphan*/  mbuf_sz; } ;
struct ixl_vsi {int num_tx_queues; int num_rx_queues; int /*<<< orphan*/  hw; int /*<<< orphan*/  ctx; struct ixl_rx_queue* rx_queues; struct ixl_tx_queue* tx_queues; } ;
struct ixl_tx_queue {int dummy; } ;
struct ixl_rx_queue {struct rx_ring rxr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_vsi*,struct ixl_tx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ixl_vsi *vsi)
{
	struct ixl_tx_queue *tx_que = vsi->tx_queues;
	struct ixl_rx_queue *rx_que = vsi->rx_queues;
	struct rx_ring *rxr;

	for (int i = 0; i < vsi->num_tx_queues; i++, tx_que++)
		FUNC1(vsi, tx_que);

	for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++) {
		rxr = &rx_que->rxr;

		rxr->mbuf_sz = FUNC0(vsi->ctx);

		FUNC2(vsi->hw, rxr->tail, 0);
	}
}