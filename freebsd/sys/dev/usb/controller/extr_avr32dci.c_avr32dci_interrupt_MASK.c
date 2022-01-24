#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct avr32dci_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVR32_CLRINT ; 
 int /*<<< orphan*/  AVR32_INTSTA ; 
 int AVR32_INT_DET_SUSPD ; 
 int AVR32_INT_ENDRESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVR32_INT_WAKE_UP ; 
 int FUNC1 (struct avr32dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct avr32dci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct avr32dci_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct avr32dci_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct avr32dci_softc*) ; 

void
FUNC9(struct avr32dci_softc *sc)
{
	uint32_t status;

	FUNC4(&sc->sc_bus);

	/* read interrupt status */
	status = FUNC1(sc, AVR32_INTSTA);

	/* clear all set interrupts */
	FUNC2(sc, AVR32_CLRINT, status);

	FUNC3(14, "INTSTA=0x%08x\n", status);

	/* check for any bus state change interrupts */
	if (status & AVR32_INT_ENDRESET) {

		FUNC3(5, "end of reset\n");

		/* set correct state */
		sc->sc_flags.status_bus_reset = 1;
		sc->sc_flags.status_suspend = 0;
		sc->sc_flags.change_suspend = 0;
		sc->sc_flags.change_connect = 1;

		/* disable resume interrupt */
		FUNC7(sc, AVR32_INT_DET_SUSPD |
		    AVR32_INT_ENDRESET, AVR32_INT_WAKE_UP);

		/* complete root HUB interrupt endpoint */
		FUNC8(sc);
	}
	/*
	 * If resume and suspend is set at the same time we interpret
	 * that like RESUME. Resume is set when there is at least 3
	 * milliseconds of inactivity on the USB BUS.
	 */
	if (status & AVR32_INT_WAKE_UP) {

		FUNC3(5, "resume interrupt\n");

		if (sc->sc_flags.status_suspend) {
			/* update status bits */
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 1;

			/* disable resume interrupt */
			FUNC7(sc, AVR32_INT_DET_SUSPD |
			    AVR32_INT_ENDRESET, AVR32_INT_WAKE_UP);

			/* complete root HUB interrupt endpoint */
			FUNC8(sc);
		}
	} else if (status & AVR32_INT_DET_SUSPD) {

		FUNC3(5, "suspend interrupt\n");

		if (!sc->sc_flags.status_suspend) {
			/* update status bits */
			sc->sc_flags.status_suspend = 1;
			sc->sc_flags.change_suspend = 1;

			/* disable suspend interrupt */
			FUNC7(sc, AVR32_INT_WAKE_UP |
			    AVR32_INT_ENDRESET, AVR32_INT_DET_SUSPD);

			/* complete root HUB interrupt endpoint */
			FUNC8(sc);
		}
	}
	/* check for any endpoint interrupts */
	if (status & -FUNC0(0)) {

		FUNC3(5, "real endpoint interrupt\n");

		FUNC6(sc);
	}
	FUNC5(&sc->sc_bus);
}