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
struct ifnet {int if_drv_flags; } ;
struct et_softc {scalar_t__ watchdog_timer; int /*<<< orphan*/  sc_flags; scalar_t__ sc_tx_intr; scalar_t__ sc_tx; int /*<<< orphan*/  sc_tick; struct ifnet* ifp; } ;

/* Variables and functions */
 int FUNC0 (struct et_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ET_FLAG_TXRX_ENABLED ; 
 int /*<<< orphan*/  ET_INTR_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct et_softc*) ; 
 int /*<<< orphan*/  ET_MAC_CFG1 ; 
 int ET_MAC_CFG1_RXEN ; 
 int ET_MAC_CFG1_TXEN ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct et_softc*) ; 

__attribute__((used)) static void
FUNC10(struct et_softc *sc)
{
	struct ifnet *ifp;

	FUNC3(sc);

	ifp = sc->ifp;
	FUNC4(&sc->sc_tick);
	/* Disable interrupts. */
	FUNC1(sc, ET_INTR_MASK, 0xffffffff);

	FUNC1(sc, ET_MAC_CFG1, FUNC0(sc, ET_MAC_CFG1) & ~(
	    ET_MAC_CFG1_TXEN | ET_MAC_CFG1_RXEN));
	FUNC2(100);

	FUNC8(sc);
	FUNC9(sc);
	FUNC7(sc);

	FUNC6(sc);
	FUNC5(sc);

	sc->sc_tx = 0;
	sc->sc_tx_intr = 0;
	sc->sc_flags &= ~ET_FLAG_TXRX_ENABLED;

	sc->watchdog_timer = 0;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}