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
struct ifnet {struct hn_softc* if_softc; } ;
struct hn_tx_ring {int /*<<< orphan*/  hn_tx_task; int /*<<< orphan*/  hn_tx_taskq; int /*<<< orphan*/  hn_tx_lock; int /*<<< orphan*/  hn_direct_tx_size; scalar_t__ hn_sched_tx; } ;
struct hn_softc {struct hn_tx_ring* hn_tx_ring; } ;

/* Variables and functions */
 int FUNC0 (struct hn_tx_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct hn_softc *sc = ifp->if_softc;
	struct hn_tx_ring *txr = &sc->hn_tx_ring[0];

	if (txr->hn_sched_tx)
		goto do_sched;

	if (FUNC1(&txr->hn_tx_lock)) {
		int sched;

		sched = FUNC0(txr, txr->hn_direct_tx_size);
		FUNC2(&txr->hn_tx_lock);
		if (!sched)
			return;
	}
do_sched:
	FUNC3(txr->hn_tx_taskq, &txr->hn_tx_task);
}