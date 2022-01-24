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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct xhci_softc {int sc_runt_off; int sc_door_off; TYPE_1__ sc_bus; int /*<<< orphan*/  sc_oper_off; scalar_t__ sc_capa_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  USB_ERR_IOERROR ; 
 int /*<<< orphan*/  XHCI_CAPLENGTH ; 
 int /*<<< orphan*/  XHCI_DBOFF ; 
 int /*<<< orphan*/  XHCI_RTSOFF ; 
 int XHCI_STS_HCH ; 
 int /*<<< orphan*/  XHCI_USBCMD ; 
 int /*<<< orphan*/  XHCI_USBSTS ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  capa ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  oper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

usb_error_t
FUNC6(struct xhci_softc *sc)
{
	uint32_t temp;
	uint16_t i;

	FUNC0("\n");

	sc->sc_capa_off = 0;
	sc->sc_oper_off = FUNC1(sc, capa, XHCI_CAPLENGTH);
	sc->sc_runt_off = FUNC2(sc, capa, XHCI_RTSOFF) & ~0xF;
	sc->sc_door_off = FUNC2(sc, capa, XHCI_DBOFF) & ~0x3;

	/* Halt controller */
	FUNC3(sc, oper, XHCI_USBCMD, 0);

	for (i = 0; i != 100; i++) {
		FUNC5(NULL, hz / 100);
		temp = FUNC2(sc, oper, XHCI_USBSTS) & XHCI_STS_HCH;
		if (temp)
			break;
	}

	if (!temp) {
		FUNC4(sc->sc_bus.parent, "Controller halt timeout.\n");
		return (USB_ERR_IOERROR);
	}
	return (0);
}