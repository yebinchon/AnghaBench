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
struct atmegadci_softc {TYPE_1__ sc_bus; int /*<<< orphan*/  (* sc_clocks_on ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int ATMEGA_EP_MAX ; 
 int FUNC0 (struct atmegadci_softc*,int) ; 
 int ATMEGA_UDCON ; 
 int ATMEGA_UDCON_DETACH ; 
 int ATMEGA_UDIEN ; 
 int ATMEGA_UDINT_EORSTE ; 
 int ATMEGA_UDINT_SUSPE ; 
 int ATMEGA_UECONX ; 
 int ATMEGA_UEIENX ; 
 int ATMEGA_UENUM ; 
 int ATMEGA_UERST ; 
 int ATMEGA_UHWCON ; 
 int ATMEGA_UHWCON_UIMOD ; 
 int ATMEGA_UHWCON_UVREGE ; 
 int ATMEGA_USBCON ; 
 int ATMEGA_USBCON_FRZCLK ; 
 int ATMEGA_USBCON_OTGPADE ; 
 int ATMEGA_USBCON_USBE ; 
 int ATMEGA_USBCON_VBUSTE ; 
 int ATMEGA_USBSTA ; 
 int ATMEGA_USBSTA_VBUS ; 
 int /*<<< orphan*/  FUNC1 (struct atmegadci_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  USB_REV_1_1 ; 
 int /*<<< orphan*/  atmegadci_bus_methods ; 
 int /*<<< orphan*/  FUNC5 (struct atmegadci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct atmegadci_softc*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

usb_error_t
FUNC10(struct atmegadci_softc *sc)
{
	uint8_t n;

	FUNC2("start\n");

	/* set up the bus structure */
	sc->sc_bus.usbrev = USB_REV_1_1;
	sc->sc_bus.methods = &atmegadci_bus_methods;

	FUNC3(&sc->sc_bus);

	/* make sure USB is enabled */
	FUNC1(sc, ATMEGA_USBCON,
	    ATMEGA_USBCON_USBE |
	    ATMEGA_USBCON_FRZCLK);

	/* enable USB PAD regulator */
	FUNC1(sc, ATMEGA_UHWCON,
	    ATMEGA_UHWCON_UVREGE |
	    ATMEGA_UHWCON_UIMOD);

	/* the following register sets up the USB PLL, assuming 16MHz X-tal */
	FUNC1(sc, 0x49 /* PLLCSR */, 0x14 | 0x02);

	/* wait for PLL to lock */
	for (n = 0; n != 20; n++) {
		if (FUNC0(sc, 0x49) & 0x01)
			break;
		/* wait a little bit for PLL to start */
		FUNC9(&sc->sc_bus.bus_mtx, hz / 100);
	}

	/* make sure USB is enabled */
	FUNC1(sc, ATMEGA_USBCON,
	    ATMEGA_USBCON_USBE |
	    ATMEGA_USBCON_OTGPADE |
	    ATMEGA_USBCON_VBUSTE);

	/* turn on clocks */
	(sc->sc_clocks_on) (&sc->sc_bus);

	/* make sure device is re-enumerated */
	FUNC1(sc, ATMEGA_UDCON, ATMEGA_UDCON_DETACH);

	/* wait a little for things to stabilise */
	FUNC9(&sc->sc_bus.bus_mtx, hz / 20);

	/* enable interrupts */
	FUNC1(sc, ATMEGA_UDIEN,
	    ATMEGA_UDINT_SUSPE |
	    ATMEGA_UDINT_EORSTE);

	/* reset all endpoints */
	FUNC1(sc, ATMEGA_UERST,
	    (1 << ATMEGA_EP_MAX) - 1);

	/* disable reset */
	FUNC1(sc, ATMEGA_UERST, 0);

	/* disable all endpoints */
	for (n = 0; n != ATMEGA_EP_MAX; n++) {

		/* select endpoint */
		FUNC1(sc, ATMEGA_UENUM, n);

		/* disable endpoint interrupt */
		FUNC1(sc, ATMEGA_UEIENX, 0);

		/* disable endpoint */
		FUNC1(sc, ATMEGA_UECONX, 0);
	}

	/* turn off clocks */

	FUNC5(sc);

	/* read initial VBUS state */

	n = FUNC0(sc, ATMEGA_USBSTA);
	FUNC7(sc, n & ATMEGA_USBSTA_VBUS);

	FUNC4(&sc->sc_bus);

	/* catch any lost interrupts */

	FUNC6(&sc->sc_bus);

	return (0);			/* success */
}