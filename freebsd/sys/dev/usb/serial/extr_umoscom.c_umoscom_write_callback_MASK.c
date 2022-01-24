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
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct umoscom_softc {int /*<<< orphan*/  sc_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UMOSCOM_BUFSIZE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct umoscom_softc* FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct umoscom_softc *sc = FUNC8(xfer);
	struct usb_page_cache *pc;
	uint32_t actlen;

	switch (FUNC2(xfer)) {
	case USB_ST_SETUP:
	case USB_ST_TRANSFERRED:
tr_setup:
		FUNC0("\n");

		pc = FUNC5(xfer, 0);
		if (FUNC3(&sc->sc_ucom, pc, 0,
		    UMOSCOM_BUFSIZE, &actlen)) {

			FUNC6(xfer, 0, actlen);
			FUNC4(xfer);
		}
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