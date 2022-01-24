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
struct hrowpic_softc {int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; scalar_t__ sc_rrid; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HPIC_CLEAR ; 
 int /*<<< orphan*/  HPIC_ENABLE ; 
 int /*<<< orphan*/  HPIC_PRIMARY ; 
 int /*<<< orphan*/  HPIC_SECONDARY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct hrowpic_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrowpic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct hrowpic_softc *sc;

	sc = FUNC1(dev);
	sc->sc_dev = dev;

	sc->sc_rrid = 0;
	sc->sc_rres = FUNC0(dev, SYS_RES_MEMORY, &sc->sc_rrid,
	    RF_ACTIVE);

	if (sc->sc_rres == NULL) {
		FUNC2(dev, "Could not alloc mem resource!\n");
		return (ENXIO);
	}

	sc->sc_bt = FUNC7(sc->sc_rres);
	sc->sc_bh = FUNC6(sc->sc_rres);

	/*
	 * Disable all interrupt sources and clear outstanding interrupts
	 */
	FUNC3(sc, HPIC_ENABLE, HPIC_PRIMARY, 0);
	FUNC3(sc, HPIC_CLEAR,  HPIC_PRIMARY, 0xffffffff);
	FUNC3(sc, HPIC_ENABLE, HPIC_SECONDARY, 0);
	FUNC3(sc, HPIC_CLEAR,  HPIC_SECONDARY, 0xffffffff);

	FUNC5(dev, FUNC4(dev), 64, 0, FALSE);
	return (0);
}