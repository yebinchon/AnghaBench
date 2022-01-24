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
struct et_softc {int /*<<< orphan*/  sc_tick; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_timer; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ET_FLAG_LINK ; 
 int /*<<< orphan*/  ET_INTRS ; 
 int /*<<< orphan*/  ET_INTR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*) ; 
 int /*<<< orphan*/  ET_TIMER ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct et_softc*) ; 
 int FUNC3 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct et_softc*) ; 
 int FUNC8 (struct et_softc*) ; 
 int FUNC9 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct et_softc*) ; 
 int /*<<< orphan*/  et_tick ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC11(struct et_softc *sc)
{
	struct ifnet *ifp;
	int error;

	FUNC1(sc);

	ifp = sc->ifp;
	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	FUNC10(sc);
	FUNC7(sc);

	FUNC6(sc);
	error = FUNC5(sc);
	if (error)
		return;

	error = FUNC3(sc);
	if (error)
		goto fail;

	/*
	 * Start TX/RX DMA engine
	 */
	error = FUNC8(sc);
	if (error)
		return;

	error = FUNC9(sc);
	if (error)
		return;

	/* Enable interrupts. */
	FUNC0(sc, ET_INTR_MASK, ~ET_INTRS);

	FUNC0(sc, ET_TIMER, sc->sc_timer);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	sc->sc_flags &= ~ET_FLAG_LINK;
	FUNC4(ifp);

	FUNC2(&sc->sc_tick, hz, et_tick, sc);

fail:
	if (error)
		FUNC10(sc);
}