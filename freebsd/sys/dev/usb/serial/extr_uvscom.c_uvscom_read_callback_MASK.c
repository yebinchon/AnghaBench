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
struct uvscom_softc {int /*<<< orphan*/  sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct uvscom_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct uvscom_softc *sc = FUNC7(xfer);
	struct usb_page_cache *pc;
	int actlen;

	FUNC8(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
		pc = FUNC3(xfer, 0);
		FUNC1(&sc->sc_ucom, pc, 0, actlen);

	case USB_ST_SETUP:
tr_setup:
		FUNC5(xfer, 0, FUNC4(xfer));
		FUNC2(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC6(xfer);
			goto tr_setup;
		}
		return;
	}
}