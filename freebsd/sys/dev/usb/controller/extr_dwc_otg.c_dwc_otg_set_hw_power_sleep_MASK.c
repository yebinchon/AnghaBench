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
struct usb_bus {int dummy; } ;
struct dwc_otg_softc {int dummy; } ;

/* Variables and functions */
 struct dwc_otg_softc* FUNC0 (struct usb_bus*) ; 
#define  USB_HW_POWER_RESUME 130 
#define  USB_HW_POWER_SHUTDOWN 129 
#define  USB_HW_POWER_SUSPEND 128 
 int /*<<< orphan*/  FUNC1 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_otg_softc*) ; 

__attribute__((used)) static void
FUNC4(struct usb_bus *bus, uint32_t state)
{
	struct dwc_otg_softc *sc = FUNC0(bus);

	switch (state) {
	case USB_HW_POWER_SUSPEND:
		FUNC2(sc);
		break;
	case USB_HW_POWER_SHUTDOWN:
		FUNC3(sc);
		break;
	case USB_HW_POWER_RESUME:
		FUNC1(sc);
		break;
	default:
		break;
	}
}