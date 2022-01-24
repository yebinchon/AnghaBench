#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  bus_mtx; int /*<<< orphan*/ * methods; int /*<<< orphan*/  usbrev; } ;
struct avr32dci_softc {TYPE_1__ sc_bus; int /*<<< orphan*/  (* sc_clocks_on ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AVR32_CTRL_DEV_DETACH ; 
 int /*<<< orphan*/  AVR32_CTRL_DEV_EN_USBA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AVR32_EPTCTL_EPT_ENABL ; 
 int /*<<< orphan*/  AVR32_EPTRST ; 
 int AVR32_EP_MAX ; 
 int AVR32_INT_DET_SUSPD ; 
 int AVR32_INT_ENDRESET ; 
 int /*<<< orphan*/  FUNC1 (struct avr32dci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  USB_REV_1_1 ; 
 int /*<<< orphan*/  avr32dci_bus_methods ; 
 int /*<<< orphan*/  FUNC5 (struct avr32dci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct avr32dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct avr32dci_softc*,int,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

usb_error_t
FUNC11(struct avr32dci_softc *sc)
{
	uint8_t n;

	FUNC2("start\n");

	/* set up the bus structure */
	sc->sc_bus.usbrev = USB_REV_1_1;
	sc->sc_bus.methods = &avr32dci_bus_methods;

	FUNC3(&sc->sc_bus);

	/* make sure USB is enabled */
	FUNC7(sc, AVR32_CTRL_DEV_EN_USBA, 0);

	/* turn on clocks */
	(sc->sc_clocks_on) (&sc->sc_bus);

	/* make sure device is re-enumerated */
	FUNC7(sc, AVR32_CTRL_DEV_DETACH, 0);

	/* wait a little for things to stabilise */
	FUNC10(&sc->sc_bus.bus_mtx, hz / 20);

	/* disable interrupts */
	FUNC8(sc, 0, 0xFFFFFFFF);

	/* enable interrupts */
	FUNC8(sc, AVR32_INT_DET_SUSPD |
	    AVR32_INT_ENDRESET, 0);

	/* reset all endpoints */
	FUNC1(sc, AVR32_EPTRST, (1 << AVR32_EP_MAX) - 1);

	/* disable all endpoints */
	for (n = 0; n != AVR32_EP_MAX; n++) {
		/* disable endpoint */
		FUNC1(sc, FUNC0(n), AVR32_EPTCTL_EPT_ENABL);
	}

	/* turn off clocks */

	FUNC5(sc);

	FUNC4(&sc->sc_bus);

	/* catch any lost interrupts */

	FUNC6(&sc->sc_bus);

	return (0);			/* success */
}