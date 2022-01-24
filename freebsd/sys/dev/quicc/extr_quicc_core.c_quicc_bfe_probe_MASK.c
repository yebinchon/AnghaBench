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
typedef  int /*<<< orphan*/  u_int ;
struct quicc_softc {int /*<<< orphan*/ * sc_rres; scalar_t__ sc_rrid; int /*<<< orphan*/  sc_rtype; int /*<<< orphan*/  sc_clock; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  QUICC_PRAM_REV_NUM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 struct quicc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev, u_int clock)
{
	struct quicc_softc *sc;
	uint16_t rev;

	sc = FUNC3(dev);
	sc->sc_dev = dev;
	if (FUNC2(dev) == NULL)
		FUNC4(dev,
		    "Quad integrated communications controller");

	sc->sc_rrid = 0;
	sc->sc_rtype = SYS_RES_MEMORY;
	sc->sc_rres = FUNC0(dev, sc->sc_rtype, &sc->sc_rrid,
	    RF_ACTIVE);
	if (sc->sc_rres == NULL) {
		sc->sc_rrid = 0;
		sc->sc_rtype = SYS_RES_IOPORT;
		sc->sc_rres = FUNC0(dev, sc->sc_rtype,
		    &sc->sc_rrid, RF_ACTIVE);
		if (sc->sc_rres == NULL)
			return (ENXIO);
	}

	sc->sc_clock = clock;

	/*
	 * Check that the microcode revision is 0x00e8, as documented
	 * in the MPC8555E PowerQUICC III Integrated Processor Family
	 * Reference Manual.
	 */
	rev = FUNC5(sc->sc_rres, QUICC_PRAM_REV_NUM);

	FUNC1(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);
	return ((rev == 0x00e8) ? BUS_PROBE_DEFAULT : ENXIO);
}