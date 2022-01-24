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
struct nf10bmac_softc {struct ifnet* nf10bmac_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nf10bmac_softc*) ; 
 int NF10BMAC_MAX_PKTS ; 
 int /*<<< orphan*/  FUNC2 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf10bmac_softc*) ; 
 int FUNC5 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct nf10bmac_softc *sc;
	struct ifnet *ifp;
	int rx_npkts;

	sc = (struct nf10bmac_softc *)arg;
	ifp = sc->nf10bmac_ifp;

	FUNC1(sc);
#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING) {
		NF10BMAC_UNLOCK(sc);
		return;
	} 
#endif

	/* NF10BMAC_RX_INTR_DISABLE(sc); */
	FUNC2(sc);

	/* We only have an RX interrupt and no status information. */
	rx_npkts = 0;
	while (rx_npkts < NF10BMAC_MAX_PKTS) {
		int c;

		c = FUNC5(sc);
		rx_npkts += c;
		if (c == 0)
			break;
	}

	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		/* Re-enable interrupts. */
		FUNC3(sc);

		if (!FUNC0(&ifp->if_snd))
			FUNC6(ifp);
	}
	FUNC4(sc);
}