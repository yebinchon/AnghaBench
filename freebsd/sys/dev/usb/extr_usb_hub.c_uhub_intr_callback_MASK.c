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
struct usb_xfer {int /*<<< orphan*/  error; } ;
struct uhub_softc {TYPE_1__* sc_udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct uhub_softc* FUNC7 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhub_softc *sc = FUNC7(xfer);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(2, "\n");
		/*
		 * This is an indication that some port
		 * has changed status. Notify the bus
		 * event handler thread that we need
		 * to be explored again:
		 */
		FUNC2(sc->sc_udev->bus, 0);

	case USB_ST_SETUP:
		FUNC5(xfer, 0, FUNC4(xfer));
		FUNC3(xfer);
		break;

	default:			/* Error */
		if (xfer->error != USB_ERR_CANCELLED) {
			/*
			 * Do a clear-stall. The "stall_pipe" flag
			 * will get cleared before next callback by
			 * the USB stack.
			 */
			FUNC6(xfer);
			FUNC5(xfer, 0, FUNC4(xfer));
			FUNC3(xfer);
		}
		break;
	}
}