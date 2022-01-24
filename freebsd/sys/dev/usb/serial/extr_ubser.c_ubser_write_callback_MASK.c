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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubser_softc {scalar_t__ sc_curr_tx_unit; int /*<<< orphan*/  sc_tx_size; scalar_t__ sc_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct ubser_softc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct usb_page_cache*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct ubser_softc* FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubser_softc *sc = FUNC8(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[1];
	uint8_t first_unit = sc->sc_curr_tx_unit;
	uint32_t actlen;

	switch (FUNC0(xfer)) {
	case USB_ST_SETUP:
	case USB_ST_TRANSFERRED:
tr_setup:
		pc = FUNC5(xfer, 0);
		do {
			if (FUNC2(sc->sc_ucom + sc->sc_curr_tx_unit,
			    pc, 1, sc->sc_tx_size - 1,
			    &actlen)) {

				buf[0] = sc->sc_curr_tx_unit;

				FUNC3(pc, 0, buf, 1);

				FUNC6(xfer, 0, actlen + 1);
				FUNC4(xfer);

				FUNC1(sc);	/* round robin */

				break;
			}
			FUNC1(sc);

		} while (sc->sc_curr_tx_unit != first_unit);

		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC7(xfer);
			goto tr_setup;
		}
		return;

	}
}