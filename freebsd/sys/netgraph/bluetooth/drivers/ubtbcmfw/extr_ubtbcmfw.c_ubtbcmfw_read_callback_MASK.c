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
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct TYPE_2__ {struct usb_fifo** fp; } ;
struct ubtbcmfw_softc {TYPE_1__ sc_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_RX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_fifo*,struct usb_page_cache*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct ubtbcmfw_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubtbcmfw_softc	*sc = FUNC8(xfer);
	struct usb_fifo	*fifo = sc->sc_fifo.fp[USB_FIFO_RX];
	struct usb_page_cache	*pc;
	int			actlen;

	FUNC9(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
		pc = FUNC4(xfer, 0);
		FUNC2(fifo, pc, 0, actlen, 1);
		/* FALLTHROUGH */

	case USB_ST_SETUP:
setup_next:
		if (FUNC1(fifo) > 0) {
			FUNC6(xfer, 0, FUNC5(xfer));
			FUNC3(xfer);
		}
		break;

	default: /* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC7(xfer);
			goto setup_next;
		}
		break;
	}
}