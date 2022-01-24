#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {size_t flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ena_ring {int /*<<< orphan*/  enqueue_task; int /*<<< orphan*/  enqueue_tq; int /*<<< orphan*/  br; } ;
struct ena_adapter {size_t num_queues; struct ena_ring* tx_ring; int /*<<< orphan*/  ifp; } ;
typedef  TYPE_2__* if_t ;
struct TYPE_7__ {struct ena_adapter* if_softc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int ENODEV ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 size_t curcpu ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_ring*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int
FUNC9(if_t ifp, struct mbuf *m)
{
	struct ena_adapter *adapter = ifp->if_softc;
	struct ena_ring *tx_ring;
	int ret, is_drbr_empty;
	uint32_t i;

	if (FUNC8((FUNC6(adapter->ifp) & IFF_DRV_RUNNING) == 0))
		return (ENODEV);

	/* Which queue to use */
	/*
	 * If everything is setup correctly, it should be the
	 * same bucket that the current CPU we're on is.
	 * It should improve performance.
	 */
	if (FUNC2(m) != M_HASHTYPE_NONE) {
		i = m->m_pkthdr.flowid % adapter->num_queues;
	} else {
		i = curcpu % adapter->num_queues;
	}
	tx_ring = &adapter->tx_ring[i];

	/* Check if drbr is empty before putting packet */
	is_drbr_empty = FUNC3(ifp, tx_ring->br);
	ret = FUNC4(ifp, tx_ring->br, m);
	if (FUNC8(ret != 0)) {
		FUNC7(tx_ring->enqueue_tq, &tx_ring->enqueue_task);
		return (ret);
	}

	if (is_drbr_empty && (FUNC0(tx_ring) != 0)) {
		FUNC5(tx_ring);
		FUNC1(tx_ring);
	} else {
		FUNC7(tx_ring->enqueue_tq, &tx_ring->enqueue_task);
	}

	return (0);
}