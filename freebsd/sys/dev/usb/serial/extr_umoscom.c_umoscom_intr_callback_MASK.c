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
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct umoscom_softc {int /*<<< orphan*/  sc_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct umoscom_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct umoscom_softc *sc = FUNC8(xfer);
	int actlen;

	FUNC9(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		if (actlen < 2) {
			FUNC0("too short message\n");
			goto tr_setup;
		}
		FUNC3(&sc->sc_ucom);

	case USB_ST_SETUP:
tr_setup:
		FUNC6(xfer, 0, FUNC5(xfer));
		FUNC4(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			FUNC1(0, "transfer failed\n");
			/* try to clear stall first */
			FUNC7(xfer);
			goto tr_setup;
		}
		return;
	}
}