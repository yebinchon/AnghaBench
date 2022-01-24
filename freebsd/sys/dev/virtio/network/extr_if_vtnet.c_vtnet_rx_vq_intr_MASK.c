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
struct vtnet_softc {scalar_t__ vtnet_act_vq_pairs; struct ifnet* vtnet_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  vrxs_rescheduled; } ;
struct vtnet_rxq {scalar_t__ vtnrx_id; int /*<<< orphan*/  vtnrx_intrtask; int /*<<< orphan*/  vtnrx_tq; TYPE_1__ vtnrx_stats; struct vtnet_softc* vtnrx_sc; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 scalar_t__ NM_IRQ_PASS ; 
 int /*<<< orphan*/  VTNET_INTR_DISABLE_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_rxq*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_rxq*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ifnet*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vtnet_rxq*) ; 
 scalar_t__ FUNC6 (struct vtnet_rxq*) ; 
 int FUNC7 (struct vtnet_rxq*) ; 

__attribute__((used)) static void
FUNC8(void *xrxq)
{
	struct vtnet_softc *sc;
	struct vtnet_rxq *rxq;
	struct ifnet *ifp;
	int tries, more;

	rxq = xrxq;
	sc = rxq->vtnrx_sc;
	ifp = sc->vtnet_ifp;
	tries = 0;

	if (FUNC2(rxq->vtnrx_id >= sc->vtnet_act_vq_pairs)) {
		/*
		 * Ignore this interrupt. Either this is a spurious interrupt
		 * or multiqueue without per-VQ MSIX so every queue needs to
		 * be polled (a brain dead configuration we could try harder
		 * to avoid).
		 */
		FUNC5(rxq);
		return;
	}

#ifdef DEV_NETMAP
	if (netmap_rx_irq(ifp, rxq->vtnrx_id, &more) != NM_IRQ_PASS)
		return;
#endif /* DEV_NETMAP */

	FUNC0(rxq);

again:
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC1(rxq);
		return;
	}

	more = FUNC7(rxq);
	if (more || FUNC6(rxq) != 0) {
		if (!more)
			FUNC5(rxq);
		/*
		 * This is an occasional condition or race (when !more),
		 * so retry a few times before scheduling the taskqueue.
		 */
		if (tries++ < VTNET_INTR_DISABLE_RETRIES)
			goto again;

		FUNC1(rxq);
		rxq->vtnrx_stats.vrxs_rescheduled++;
		FUNC4(rxq->vtnrx_tq, &rxq->vtnrx_intrtask);
	} else
		FUNC1(rxq);
}