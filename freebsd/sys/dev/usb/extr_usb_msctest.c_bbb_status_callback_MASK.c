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
struct bbb_transfer {int status_try; TYPE_1__* csw; } ;
struct bbb_csw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bCSWStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSWSTATUS_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERR_CSW_FAILED ; 
 int /*<<< orphan*/  ST_DATA_RD_CS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int /*<<< orphan*/  USB_ERR_SHORT_XFER ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct bbb_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bbb_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 struct bbb_transfer* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct bbb_transfer *sc = FUNC7(xfer);
	int actlen;
	int sumlen;

	FUNC8(xfer, &actlen, &sumlen, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		/* very simple status check */

		if (actlen < (int)sizeof(struct bbb_csw)) {
			FUNC2(sc, USB_ERR_SHORT_XFER);
		} else if (sc->csw->bCSWStatus == CSWSTATUS_GOOD) {
			FUNC2(sc, 0);	/* success */
		} else {
			FUNC2(sc, ERR_CSW_FAILED);	/* error */
		}
		break;

	case USB_ST_SETUP:
		FUNC6(xfer, 0,
		    sizeof(struct bbb_csw));
		FUNC5(xfer);
		break;

	default:
		FUNC0("Failed to read CSW: %s, try %d\n",
		    FUNC4(error), sc->status_try);

		if (error == USB_ERR_CANCELLED || sc->status_try) {
			FUNC2(sc, error);
		} else {
			sc->status_try = 1;
			FUNC3(sc, ST_DATA_RD_CS);
		}
		break;
	}
}