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
typedef  int uint32_t ;
struct TYPE_2__ {int data_rem; int offset; int data_error; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; } ;
struct usb_xfer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  USTORAGE_FS_T_BBB_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct ustorage_fs_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ustorage_fs_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct ustorage_fs_softc *sc = FUNC7(xfer);
	uint32_t max_bulk = FUNC4(xfer);
	int actlen, sumlen;

	FUNC8(xfer, &actlen, &sumlen, NULL, NULL);

	FUNC0("\n");

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		sc->sc_transfer.data_rem -= actlen;
		sc->sc_transfer.offset += actlen;

		if (actlen != sumlen || sc->sc_transfer.data_rem == 0) {
			/* short transfer or end of data */
			FUNC9(sc,
			    USTORAGE_FS_T_BBB_STATUS);
			break;
		}
		/* Fallthrough */

	case USB_ST_SETUP:
tr_setup:
		if (max_bulk > sc->sc_transfer.data_rem) {
			max_bulk = sc->sc_transfer.data_rem;
		}
		if (sc->sc_transfer.data_error) {
			sc->sc_transfer.data_error = 0;
			FUNC6(xfer);
		}
		FUNC5(xfer, 0, max_bulk);
		FUNC2(xfer);
		break;

	default:			/* Error */
		if (error == USB_ERR_CANCELLED) {
			break;
		}
		/*
		 * If the pipe is already stalled, don't do another stall:
		 */
		if (!FUNC3(xfer))
			sc->sc_transfer.data_error = 1;

		/* try again */
		goto tr_setup;
	}
}