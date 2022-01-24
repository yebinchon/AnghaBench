#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ena_ring {int /*<<< orphan*/  br; } ;
struct ena_adapter {int num_queues; struct ena_ring* tx_ring; } ;
typedef  TYPE_1__* if_t ;
struct TYPE_6__ {struct ena_adapter* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(if_t ifp)
{
	struct ena_adapter *adapter = ifp->if_softc;
	struct ena_ring *tx_ring = adapter->tx_ring;
	int i;

	for(i = 0; i < adapter->num_queues; ++i, ++tx_ring)
		if (!FUNC2(ifp, tx_ring->br)) {
			FUNC0(tx_ring);
			FUNC3(ifp, tx_ring->br);
			FUNC1(tx_ring);
		}

	FUNC4(ifp);
}