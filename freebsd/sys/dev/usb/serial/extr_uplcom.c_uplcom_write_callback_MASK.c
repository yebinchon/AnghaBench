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
struct uplcom_softc {int /*<<< orphan*/  sc_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPLCOM_BULK_BUF_SIZE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct uplcom_softc* FUNC7 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct uplcom_softc *sc = FUNC7(xfer);
	struct usb_page_cache *pc;
	uint32_t actlen;

	switch (FUNC1(xfer)) {
	case USB_ST_SETUP:
	case USB_ST_TRANSFERRED:
tr_setup:
		pc = FUNC4(xfer, 0);
		if (FUNC2(&sc->sc_ucom, pc, 0,
		    UPLCOM_BULK_BUF_SIZE, &actlen)) {

			FUNC0("actlen = %d\n", actlen);

			FUNC5(xfer, 0, actlen);
			FUNC3(xfer);
		}
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