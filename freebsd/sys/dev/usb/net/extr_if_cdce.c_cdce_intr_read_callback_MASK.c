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
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ue_udev; } ;
struct cdce_softc {TYPE_1__ sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct cdce_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct cdce_softc *sc = FUNC7(xfer);
	int actlen;

	FUNC8(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		FUNC0("Received %d bytes\n", actlen);

		/* TODO: decode some indications */

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC5(xfer, 0, FUNC4(xfer));
		FUNC3(xfer);
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* start clear stall */
			if (FUNC2(sc->sc_ue.ue_udev) == USB_MODE_HOST)
				FUNC6(xfer);
			goto tr_setup;
		}
		break;
	}
}