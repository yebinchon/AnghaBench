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
typedef  int uint32_t ;
struct usb_bus {int hw_power_state; } ;
typedef  int /*<<< orphan*/  ehci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct usb_bus*) ; 
 int EHCI_CMD_ASE ; 
 int EHCI_CMD_PSE ; 
 int /*<<< orphan*/  EHCI_USBCMD ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 
 int USB_HW_POWER_BULK ; 
 int USB_HW_POWER_CONTROL ; 
 int USB_HW_POWER_INTERRUPT ; 
 int USB_HW_POWER_ISOC ; 

__attribute__((used)) static void
FUNC6(struct usb_bus *bus)
{
	ehci_softc_t *sc = FUNC1(bus);
	uint32_t temp;
	uint32_t flags;

	FUNC0("\n");

	FUNC4(bus);

	flags = bus->hw_power_state;

	temp = FUNC2(sc, EHCI_USBCMD);

	temp &= ~(EHCI_CMD_ASE | EHCI_CMD_PSE);

	if (flags & (USB_HW_POWER_CONTROL |
	    USB_HW_POWER_BULK)) {
		FUNC0("Async is active\n");
		temp |= EHCI_CMD_ASE;
	}
	if (flags & (USB_HW_POWER_INTERRUPT |
	    USB_HW_POWER_ISOC)) {
		FUNC0("Periodic is active\n");
		temp |= EHCI_CMD_PSE;
	}
	FUNC3(sc, EHCI_USBCMD, temp);

	FUNC5(bus);

	return;
}