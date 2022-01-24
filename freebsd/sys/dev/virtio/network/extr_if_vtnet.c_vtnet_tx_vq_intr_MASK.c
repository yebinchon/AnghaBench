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
struct vtnet_txq {scalar_t__ vtntx_id; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {scalar_t__ vtnet_act_vq_pairs; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 scalar_t__ NM_IRQ_PASS ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_txq*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ifnet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtnet_txq*) ; 

__attribute__((used)) static void
FUNC7(void *xtxq)
{
	struct vtnet_softc *sc;
	struct vtnet_txq *txq;
	struct ifnet *ifp;

	txq = xtxq;
	sc = txq->vtntx_sc;
	ifp = sc->vtnet_ifp;

	if (FUNC2(txq->vtntx_id >= sc->vtnet_act_vq_pairs)) {
		/*
		 * Ignore this interrupt. Either this is a spurious interrupt
		 * or multiqueue without per-VQ MSIX so every queue needs to
		 * be polled (a brain dead configuration we could try harder
		 * to avoid).
		 */
		FUNC4(txq);
		return;
	}

#ifdef DEV_NETMAP
	if (netmap_tx_irq(ifp, txq->vtntx_id) != NM_IRQ_PASS)
		return;
#endif /* DEV_NETMAP */

	FUNC0(txq);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC1(txq);
		return;
	}

	FUNC5(txq);
	FUNC6(txq);

	FUNC1(txq);
}