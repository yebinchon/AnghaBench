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
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct TYPE_2__ {struct usb_fifo** fp; } ;
struct ubtbcmfw_softc {TYPE_1__ sc_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_TX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_fifo*,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct ubtbcmfw_softc* FUNC7 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubtbcmfw_softc	*sc = FUNC7(xfer);
	struct usb_fifo	*f = sc->sc_fifo.fp[USB_FIFO_TX];
	struct usb_page_cache	*pc;
	uint32_t		actlen;

	switch (FUNC0(xfer)) {
	case USB_ST_SETUP:
	case USB_ST_TRANSFERRED:
setup_next:
		pc = FUNC3(xfer, 0);
		if (FUNC1(f, pc, 0, FUNC4(xfer),
			    &actlen, 0)) {
			FUNC5(xfer, 0, actlen);
			FUNC2(xfer);
		}
		break;

	default: /* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC6(xfer);
			goto setup_next;
		}
		break;
	}
}