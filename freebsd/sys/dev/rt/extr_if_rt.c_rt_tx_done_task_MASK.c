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
typedef  int uint32_t ;
struct rt_softc {int intr_pending_mask; int int_tx_done_mask; scalar_t__ rt_chipid; int intr_disable_mask; int /*<<< orphan*/  tx_done_task; int /*<<< orphan*/  taskqueue; scalar_t__ tx_timer; int /*<<< orphan*/ * tx_ring; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INT_TXQ0_DONE ; 
 int INT_TXQ1_DONE ; 
 int INT_TXQ2_DONE ; 
 int INT_TXQ3_DONE ; 
 int RT5350_INT_TXQ0_DONE ; 
 int RT5350_INT_TXQ1_DONE ; 
 int RT5350_INT_TXQ2_DONE ; 
 int RT5350_INT_TXQ3_DONE ; 
 scalar_t__ RT_CHIPID_MT7620 ; 
 scalar_t__ RT_CHIPID_MT7621 ; 
 scalar_t__ RT_CHIPID_RT5350 ; 
 int /*<<< orphan*/  RT_DEBUG_TX ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 
 int RT_SOFTC_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *context, int pending)
{
	struct rt_softc *sc;
	struct ifnet *ifp;
	uint32_t intr_mask;
	int i;

	sc = context;
	ifp = sc->ifp;

	FUNC1(sc, RT_DEBUG_TX, "Tx done task\n");

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	for (i = RT_SOFTC_TX_RING_COUNT - 1; i >= 0; i--) {
		if (sc->intr_pending_mask & (sc->int_tx_done_mask << i)) {
			sc->intr_pending_mask &= ~(sc->int_tx_done_mask << i);
			FUNC6(sc, &sc->tx_ring[i]);
		}
	}

	sc->tx_timer = 0;

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	if(sc->rt_chipid == RT_CHIPID_RT5350 ||
	   sc->rt_chipid == RT_CHIPID_MT7620 ||
	   sc->rt_chipid == RT_CHIPID_MT7621)
	  intr_mask = (
		RT5350_INT_TXQ3_DONE |
		RT5350_INT_TXQ2_DONE |
		RT5350_INT_TXQ1_DONE |
		RT5350_INT_TXQ0_DONE);
	else
	  intr_mask = (
		INT_TXQ3_DONE |
		INT_TXQ2_DONE |
		INT_TXQ1_DONE |
		INT_TXQ0_DONE);

	FUNC2(sc);

	FUNC4(sc, ~sc->intr_pending_mask &
	    (sc->intr_disable_mask & intr_mask));

	if (sc->intr_pending_mask & intr_mask) {
		FUNC1(sc, RT_DEBUG_TX,
		    "Tx done task: scheduling again\n");
		FUNC7(sc->taskqueue, &sc->tx_done_task);
	}

	FUNC3(sc);

	if (!FUNC0(&ifp->if_snd))
		FUNC5(ifp);
}