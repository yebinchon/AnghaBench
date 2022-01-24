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
struct vtnet_softc {struct ifnet* vtnet_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  vrxs_rescheduled; } ;
struct vtnet_rxq {int /*<<< orphan*/  vtnrx_intrtask; int /*<<< orphan*/  vtnrx_tq; TYPE_1__ vtnrx_stats; struct vtnet_softc* vtnrx_sc; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_rxq*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_rxq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_rxq*) ; 
 scalar_t__ FUNC4 (struct vtnet_rxq*) ; 
 int FUNC5 (struct vtnet_rxq*) ; 

__attribute__((used)) static void
FUNC6(void *xrxq, int pending)
{
	struct vtnet_softc *sc;
	struct vtnet_rxq *rxq;
	struct ifnet *ifp;
	int more;

	rxq = xrxq;
	sc = rxq->vtnrx_sc;
	ifp = sc->vtnet_ifp;

	FUNC0(rxq);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC1(rxq);
		return;
	}

	more = FUNC5(rxq);
	if (more || FUNC4(rxq) != 0) {
		if (!more)
			FUNC3(rxq);
		rxq->vtnrx_stats.vrxs_rescheduled++;
		FUNC2(rxq->vtnrx_tq, &rxq->vtnrx_intrtask);
	}

	FUNC1(rxq);
}