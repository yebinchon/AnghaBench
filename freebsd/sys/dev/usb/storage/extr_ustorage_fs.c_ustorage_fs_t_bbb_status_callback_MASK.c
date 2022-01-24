#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ustorage_fs_bbb_csw_t ;
typedef  int /*<<< orphan*/  usb_error_t ;
struct TYPE_3__ {int data_error; int /*<<< orphan*/  data_rem; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; TYPE_2__* sc_csw; } ;
struct usb_xfer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dCSWDataResidue; int /*<<< orphan*/  dCSWSignature; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSWSIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USTORAGE_FS_T_BBB_COMMAND ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct ustorage_fs_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct ustorage_fs_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct ustorage_fs_softc *sc = FUNC7(xfer);

	FUNC0("\n");

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC8(sc, USTORAGE_FS_T_BBB_COMMAND);
		break;

	case USB_ST_SETUP:
tr_setup:
		FUNC2(sc->sc_csw->dCSWSignature, CSWSIGNATURE);
		FUNC2(sc->sc_csw->dCSWDataResidue, sc->sc_transfer.data_rem);

		if (sc->sc_transfer.data_error) {
			sc->sc_transfer.data_error = 0;
			FUNC6(xfer);
		}
		FUNC5(xfer, 0,
		    sizeof(ustorage_fs_bbb_csw_t));
		FUNC3(xfer);
		break;

	default:
		if (error == USB_ERR_CANCELLED) {
			break;
		}
		/* If the pipe is already stalled, don't do another stall */
		if (!FUNC4(xfer))
			sc->sc_transfer.data_error = 1;

		/* try again */
		goto tr_setup;
	}
}