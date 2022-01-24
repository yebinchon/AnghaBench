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
typedef  int uint16_t ;
struct vte_softc {struct ifnet* vte_ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct vte_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MISR_EVENT_CNT_OFLOW ; 
 int MISR_RX_DESC_UNAVAIL ; 
 int MISR_RX_DONE ; 
 int MISR_RX_FIFO_FULL ; 
 int MISR_TX_DONE ; 
 int VTE_INTRS ; 
 int /*<<< orphan*/  FUNC3 (struct vte_softc*) ; 
 int /*<<< orphan*/  VTE_MIER ; 
 int /*<<< orphan*/  VTE_MISR ; 
 int /*<<< orphan*/  FUNC4 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vte_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct vte_softc *sc;
	struct ifnet *ifp;
	uint16_t status;
	int n;

	sc = (struct vte_softc *)arg;
	FUNC3(sc);

	ifp = sc->vte_ifp;
	/* Reading VTE_MISR acknowledges interrupts. */
	status = FUNC0(sc, VTE_MISR);
	if ((status & VTE_INTRS) == 0) {
		/* Not ours. */
		FUNC4(sc);
		return;
	}

	/* Disable interrupts. */
	FUNC1(sc, VTE_MIER, 0);
	for (n = 8; (status & VTE_INTRS) != 0;) {
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
			break;
		if ((status & (MISR_RX_DONE | MISR_RX_DESC_UNAVAIL |
		    MISR_RX_FIFO_FULL)) != 0)
			FUNC5(sc);
		if ((status & MISR_TX_DONE) != 0)
			FUNC8(sc);
		if ((status & MISR_EVENT_CNT_OFLOW) != 0)
			FUNC7(sc);
		if (!FUNC2(&ifp->if_snd))
			FUNC6(sc);
		if (--n > 0)
			status = FUNC0(sc, VTE_MISR);
		else
			break;
	}

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		/* Re-enable interrupts. */
		FUNC1(sc, VTE_MIER, VTE_INTRS);
	}
	FUNC4(sc);
}