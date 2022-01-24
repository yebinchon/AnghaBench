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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct glc_softc* if_softc; } ;
struct glc_softc {int bsy_txdma_slots; scalar_t__ sc_tx_vlan; int sc_wdog_timer; int /*<<< orphan*/  sc_self; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_txdirtyq; int /*<<< orphan*/  sc_mtx; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct mbuf* FUNC6 (struct mbuf*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct glc_softc*,struct mbuf**,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct ifnet *ifp)
{
	struct glc_softc *sc = ifp->if_softc;
	bus_addr_t first, pktdesc;
	int kickstart = 0;
	int error;
	struct mbuf *mb_head;

	FUNC9(&sc->sc_mtx, MA_OWNED);
	first = 0;

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	if (FUNC4(&sc->sc_txdirtyq))
		kickstart = 1;

	while (!FUNC2(&ifp->if_snd)) {
		FUNC1(&ifp->if_snd, mb_head);

		if (mb_head == NULL)
			break;

		/* Check if the ring buffer is full */
		if (sc->bsy_txdma_slots > 125) {
			/* Put the packet back and stop */
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			FUNC3(&ifp->if_snd, mb_head);
			break;
		}

		FUNC0(ifp, mb_head);

		if (sc->sc_tx_vlan >= 0)
			mb_head = FUNC6(mb_head, sc->sc_tx_vlan);

		if (FUNC7(sc, &mb_head, &pktdesc)) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		if (first == 0)
			first = pktdesc;
	}

	if (kickstart && first != 0) {
		error = FUNC8(sc->sc_bus, sc->sc_dev, first, 0);
		if (error != 0)
			FUNC5(sc->sc_self,
			    "lv1_net_start_tx_dma error: %d\n", error);
		sc->sc_wdog_timer = 5;
	}
}