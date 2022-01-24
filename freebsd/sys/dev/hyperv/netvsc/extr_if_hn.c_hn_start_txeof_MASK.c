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
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct hn_tx_ring {int /*<<< orphan*/  hn_txeof_task; int /*<<< orphan*/  hn_tx_taskq; int /*<<< orphan*/  hn_tx_task; int /*<<< orphan*/  hn_tx_lock; int /*<<< orphan*/  hn_direct_tx_size; scalar_t__ hn_sched_tx; struct hn_softc* hn_sc; } ;
struct hn_softc {struct hn_tx_ring* hn_tx_ring; struct ifnet* hn_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hn_tx_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct hn_tx_ring *txr)
{
	struct hn_softc *sc = txr->hn_sc;
	struct ifnet *ifp = sc->hn_ifp;

	FUNC0(txr == &sc->hn_tx_ring[0], ("not the first TX ring"));

	if (txr->hn_sched_tx)
		goto do_sched;

	if (FUNC3(&txr->hn_tx_lock)) {
		int sched;

		FUNC1(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
		sched = FUNC2(txr, txr->hn_direct_tx_size);
		FUNC4(&txr->hn_tx_lock);
		if (sched) {
			FUNC5(txr->hn_tx_taskq,
			    &txr->hn_tx_task);
		}
	} else {
do_sched:
		/*
		 * Release the OACTIVE earlier, with the hope, that
		 * others could catch up.  The task will clear the
		 * flag again with the hn_tx_lock to avoid possible
		 * races.
		 */
		FUNC1(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
		FUNC5(txr->hn_tx_taskq, &txr->hn_txeof_task);
	}
}