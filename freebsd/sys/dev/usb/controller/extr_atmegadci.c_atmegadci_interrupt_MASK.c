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
typedef  int uint8_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct atmegadci_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int FUNC0 (struct atmegadci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATMEGA_UDIEN ; 
 int /*<<< orphan*/  ATMEGA_UDINT ; 
 int ATMEGA_UDINT_EORSTE ; 
 int ATMEGA_UDINT_EORSTI ; 
 int ATMEGA_UDINT_SUSPE ; 
 int ATMEGA_UDINT_SUSPI ; 
 int ATMEGA_UDINT_WAKEUPE ; 
 int ATMEGA_UDINT_WAKEUPI ; 
 int /*<<< orphan*/  ATMEGA_UEINT ; 
 int /*<<< orphan*/  ATMEGA_USBINT ; 
 int ATMEGA_USBINT_VBUSTI ; 
 int /*<<< orphan*/  ATMEGA_USBSTA ; 
 int ATMEGA_USBSTA_VBUS ; 
 int /*<<< orphan*/  FUNC1 (struct atmegadci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct atmegadci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmegadci_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct atmegadci_softc*,int) ; 

void
FUNC8(struct atmegadci_softc *sc)
{
	uint8_t status;

	FUNC3(&sc->sc_bus);

	/* read interrupt status */
	status = FUNC0(sc, ATMEGA_UDINT);

	/* clear all set interrupts */
	FUNC1(sc, ATMEGA_UDINT, (~status) & 0x7D);

	FUNC2(14, "UDINT=0x%02x\n", status);

	/* check for any bus state change interrupts */
	if (status & ATMEGA_UDINT_EORSTI) {

		FUNC2(5, "end of reset\n");

		/* set correct state */
		sc->sc_flags.status_bus_reset = 1;
		sc->sc_flags.status_suspend = 0;
		sc->sc_flags.change_suspend = 0;
		sc->sc_flags.change_connect = 1;

		/* disable resume interrupt */
		FUNC1(sc, ATMEGA_UDIEN,
		    ATMEGA_UDINT_SUSPE |
		    ATMEGA_UDINT_EORSTE);

		/* complete root HUB interrupt endpoint */
		FUNC6(sc);
	}
	/*
	 * If resume and suspend is set at the same time we interpret
	 * that like RESUME. Resume is set when there is at least 3
	 * milliseconds of inactivity on the USB BUS.
	 */
	if (status & ATMEGA_UDINT_WAKEUPI) {

		FUNC2(5, "resume interrupt\n");

		if (sc->sc_flags.status_suspend) {
			/* update status bits */
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 1;

			/* disable resume interrupt */
			FUNC1(sc, ATMEGA_UDIEN,
			    ATMEGA_UDINT_SUSPE |
			    ATMEGA_UDINT_EORSTE);

			/* complete root HUB interrupt endpoint */
			FUNC6(sc);
		}
	} else if (status & ATMEGA_UDINT_SUSPI) {

		FUNC2(5, "suspend interrupt\n");

		if (!sc->sc_flags.status_suspend) {
			/* update status bits */
			sc->sc_flags.status_suspend = 1;
			sc->sc_flags.change_suspend = 1;

			/* disable suspend interrupt */
			FUNC1(sc, ATMEGA_UDIEN,
			    ATMEGA_UDINT_WAKEUPE |
			    ATMEGA_UDINT_EORSTE);

			/* complete root HUB interrupt endpoint */
			FUNC6(sc);
		}
	}
	/* check VBUS */
	status = FUNC0(sc, ATMEGA_USBINT);

	/* clear all set interrupts */
	FUNC1(sc, ATMEGA_USBINT, (~status) & 0x03);

	if (status & ATMEGA_USBINT_VBUSTI) {
		uint8_t temp;

		FUNC2(5, "USBINT=0x%02x\n", status);

		temp = FUNC0(sc, ATMEGA_USBSTA);
		FUNC7(sc, temp & ATMEGA_USBSTA_VBUS);
	}
	/* check for any endpoint interrupts */
	status = FUNC0(sc, ATMEGA_UEINT);
	/* the hardware will clear the UEINT bits automatically */
	if (status) {

		FUNC2(5, "real endpoint interrupt UEINT=0x%02x\n", status);

		FUNC5(sc);
	}
	FUNC4(&sc->sc_bus);
}