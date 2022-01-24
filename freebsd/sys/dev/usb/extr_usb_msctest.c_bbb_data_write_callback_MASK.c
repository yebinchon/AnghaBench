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
typedef  int usb_frlength_t ;
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct bbb_transfer {int data_rem; int data_ptr; int actlen; int /*<<< orphan*/  data_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  ST_DATA_WR_CS ; 
 int /*<<< orphan*/  ST_STATUS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct bbb_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bbb_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct bbb_transfer* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct bbb_transfer *sc = FUNC8(xfer);
	usb_frlength_t max_bulk = FUNC5(xfer);
	int actlen, sumlen;

	FUNC9(xfer, &actlen, &sumlen, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		sc->data_rem -= actlen;
		sc->data_ptr += actlen;
		sc->actlen += actlen;

		if (actlen < sumlen) {
			/* short transfer */
			sc->data_rem = 0;
		}
	case USB_ST_SETUP:
		FUNC0("max_bulk=%d, data_rem=%d\n",
		    max_bulk, sc->data_rem);

		if (sc->data_rem == 0) {
			FUNC3(sc, ST_STATUS);
			break;
		}
		if (max_bulk > sc->data_rem) {
			max_bulk = sc->data_rem;
		}
		FUNC7(xfer, sc->data_timeout);
		FUNC6(xfer, 0, sc->data_ptr, max_bulk);
		FUNC4(xfer);
		break;

	default:			/* Error */
		if (error == USB_ERR_CANCELLED) {
			FUNC2(sc, error);
		} else {
			FUNC3(sc, ST_DATA_WR_CS);
		}
		break;
	}
}