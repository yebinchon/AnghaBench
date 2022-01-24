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
struct ti_softc {int /*<<< orphan*/  ti_mtx; scalar_t__ ti_membuf2; scalar_t__ ti_membuf; scalar_t__ ti_res; scalar_t__ ti_irq; scalar_t__ ti_intrhand; int /*<<< orphan*/  ifmedia; int /*<<< orphan*/  ti_watchdog; struct ifnet* ti_ifp; scalar_t__ dev; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct ti_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ti_softc*) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct ti_softc *sc;
	struct ifnet *ifp;

	sc = FUNC9(dev);
	if (sc->dev)
		FUNC8(sc->dev);
	FUNC0(FUNC16(&sc->ti_mtx), ("ti mutex not initialized"));
	ifp = sc->ti_ifp;
	if (FUNC10(dev)) {
		FUNC11(ifp);
		FUNC2(sc);
		FUNC18(sc);
		FUNC3(sc);
	}

	/* These should only be active if attach succeeded */
	FUNC7(&sc->ti_watchdog);
	FUNC4(dev);
	FUNC17(sc);
	FUNC14(&sc->ifmedia);

	if (sc->ti_intrhand)
		FUNC6(dev, sc->ti_irq, sc->ti_intrhand);
	if (sc->ti_irq)
		FUNC5(dev, SYS_RES_IRQ, 0, sc->ti_irq);
	if (sc->ti_res) {
		FUNC5(dev, SYS_RES_MEMORY, FUNC1(0),
		    sc->ti_res);
	}
	if (ifp)
		FUNC13(ifp);
	if (sc->ti_membuf)
		FUNC12(sc->ti_membuf, M_DEVBUF);
	if (sc->ti_membuf2)
		FUNC12(sc->ti_membuf2, M_DEVBUF);

	FUNC15(&sc->ti_mtx);

	return (0);
}