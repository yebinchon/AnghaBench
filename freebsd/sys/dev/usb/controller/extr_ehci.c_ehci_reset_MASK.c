#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_8__ {TYPE_1__ sc_bus; int /*<<< orphan*/  (* sc_vendor_post_reset ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ ehci_softc_t ;

/* Variables and functions */
 int EHCI_CMD_HCRESET ; 
 int /*<<< orphan*/  EHCI_USBCMD ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_ERR_IOERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

usb_error_t
FUNC5(ehci_softc_t *sc)
{
	uint32_t hcr;
	int i;

	FUNC1(sc, EHCI_USBCMD, EHCI_CMD_HCRESET);
	for (i = 0; i < 100; i++) {
		FUNC4(NULL, hz / 128);
		hcr = FUNC0(sc, EHCI_USBCMD) & EHCI_CMD_HCRESET;
		if (!hcr) {
			if (sc->sc_vendor_post_reset != NULL)
				sc->sc_vendor_post_reset(sc);
			return (0);
		}
	}
	FUNC2(sc->sc_bus.bdev, "reset timeout\n");
	return (USB_ERR_IOERROR);
}