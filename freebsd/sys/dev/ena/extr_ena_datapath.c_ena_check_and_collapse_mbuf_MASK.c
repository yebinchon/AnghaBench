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
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  collapse_err; int /*<<< orphan*/  collapse; } ;
struct ena_ring {TYPE_1__ tx_stats; struct ena_adapter* adapter; } ;
struct ena_adapter {int max_tx_sgl_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mbuf*) ; 
 struct mbuf* FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ena_ring *tx_ring, struct mbuf **mbuf)
{
	struct ena_adapter *adapter;
	struct mbuf *collapsed_mbuf;
	int num_frags;

	adapter = tx_ring->adapter;
	num_frags = FUNC1(*mbuf);

	/* One segment must be reserved for configuration descriptor. */
	if (num_frags < adapter->max_tx_sgl_size)
		return (0);
	FUNC0(tx_ring->tx_stats.collapse, 1);

	collapsed_mbuf = FUNC2(*mbuf, M_NOWAIT,
	    adapter->max_tx_sgl_size - 1);
	if (FUNC3(collapsed_mbuf == NULL)) {
		FUNC0(tx_ring->tx_stats.collapse_err, 1);
		return (ENOMEM);
	}

	/* If mbuf was collapsed succesfully, original mbuf is released. */
	*mbuf = collapsed_mbuf;

	return (0);
}