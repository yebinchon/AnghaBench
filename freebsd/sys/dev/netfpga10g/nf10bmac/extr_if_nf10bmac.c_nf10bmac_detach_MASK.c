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
struct nf10bmac_softc {int /*<<< orphan*/  nf10bmac_mtx; int /*<<< orphan*/  nf10bmac_media; scalar_t__ nf10bmac_rx_intrhand; int /*<<< orphan*/  nf10bmac_rx_irq_res; int /*<<< orphan*/  nf10bmac_tick; struct ifnet* nf10bmac_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct nf10bmac_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct nf10bmac_softc*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct nf10bmac_softc *sc;
	struct ifnet *ifp;

	sc = FUNC6(dev);
	FUNC0(FUNC13(&sc->nf10bmac_mtx),
	    ("%s: mutex not initialized", FUNC5(dev)));
	ifp = sc->nf10bmac_ifp;

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	/* Only cleanup if attach succeeded. */
	if (FUNC7(dev)) {
		FUNC1(sc);
		FUNC14(sc);
		FUNC2(sc);
#ifdef ENABLE_WATCHDOG
		callout_drain(&sc->nf10bmac_tick);
#endif
		FUNC8(ifp);
	}

	if (sc->nf10bmac_rx_intrhand)
		FUNC3(dev, sc->nf10bmac_rx_irq_res,
		    sc->nf10bmac_rx_intrhand);

	if (ifp != NULL)
		FUNC10(ifp);
	FUNC11(&sc->nf10bmac_media);

	FUNC12(&sc->nf10bmac_mtx);

	return (0);
}