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
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {int dummy; } ;

/* Variables and functions */
 int U3G_TXFRAMES ; 
 int U3G_TXSIZE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*,struct usb_page_cache*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC3 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct ucom_softc* FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct ucom_softc *ucom = FUNC8(xfer);
	struct usb_page_cache *pc;
	uint32_t actlen;
	uint32_t frame;

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
	case USB_ST_SETUP:
tr_setup:
		for (frame = 0; frame != U3G_TXFRAMES; frame++) {
			FUNC5(xfer, frame * U3G_TXSIZE, frame);

			pc = FUNC3(xfer, frame);
			if (FUNC1(ucom, pc, 0, U3G_TXSIZE, &actlen) == 0)
				break;
			FUNC4(xfer, frame, actlen);
		}
		if (frame != 0) {
			FUNC6(xfer, frame);
			FUNC2(xfer);
		}
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* do a builtin clear-stall */
			FUNC7(xfer);
			goto tr_setup;
		}
		break;
	}
}