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
struct usb_bus {int hw_power_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct uhci_softc {TYPE_1__ sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct uhci_softc*,int /*<<< orphan*/ ) ; 
 struct uhci_softc* FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  UHCI_CMD_MAXP ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int USB_HW_POWER_BULK ; 
 int USB_HW_POWER_CONTROL ; 
 int USB_HW_POWER_INTERRUPT ; 
 int USB_HW_POWER_ISOC ; 
 int USB_HW_POWER_NON_ROOT_HUB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uhci_softc*) ; 

__attribute__((used)) static void
FUNC7(struct usb_bus *bus)
{
	struct uhci_softc *sc = FUNC2(bus);
	uint32_t flags;

	FUNC0("\n");

	FUNC3(bus);

	flags = bus->hw_power_state;

	/*
	 * WARNING: Some FULL speed USB devices require periodic SOF
	 * messages! If any USB devices are connected through the
	 * UHCI, power save will be disabled!
	 */
	if (flags & (USB_HW_POWER_CONTROL |
	    USB_HW_POWER_NON_ROOT_HUB |
	    USB_HW_POWER_BULK |
	    USB_HW_POWER_INTERRUPT |
	    USB_HW_POWER_ISOC)) {
		FUNC0("Some USB transfer is "
		    "active on unit %u.\n",
		    FUNC5(sc->sc_bus.bdev));
		FUNC6(sc);
	} else {
		FUNC0("Power save on unit %u.\n",
		    FUNC5(sc->sc_bus.bdev));
		FUNC1(sc, UHCI_CMD_MAXP);
	}

	FUNC4(bus);

	return;
}