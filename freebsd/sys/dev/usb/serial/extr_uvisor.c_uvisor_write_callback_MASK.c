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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct uvisor_softc {int /*<<< orphan*/  sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int UVISOROBUFSIZE ; 
 int UVISOROFRAMES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC3 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct uvisor_softc* FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct uvisor_softc *sc = FUNC8(xfer);
	struct usb_page_cache *pc;
	uint32_t actlen;
	uint8_t x;

	switch (FUNC0(xfer)) {
	case USB_ST_SETUP:
	case USB_ST_TRANSFERRED:
tr_setup:
		for (x = 0; x != UVISOROFRAMES; x++) {

			FUNC5(xfer, 
			    x * UVISOROBUFSIZE, x);

			pc = FUNC3(xfer, x);
			if (FUNC1(&sc->sc_ucom, pc, 0,
			    UVISOROBUFSIZE, &actlen)) {
				FUNC4(xfer, x, actlen);
			} else {
				break;
			}
		}
		/* check for data */
		if (x != 0) {
			FUNC6(xfer, x);
			FUNC2(xfer);
		}
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC7(xfer);
			goto tr_setup;
		}
		break;
	}
}