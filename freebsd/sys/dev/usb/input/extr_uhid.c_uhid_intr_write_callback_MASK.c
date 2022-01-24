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
struct TYPE_2__ {int /*<<< orphan*/ * fp; } ;
struct uhid_softc {TYPE_1__ sc_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_TX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct uhid_softc* FUNC7 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhid_softc *sc = FUNC7(xfer);
	struct usb_page_cache *pc;
	int actlen;

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
	case USB_ST_SETUP:
tr_setup:
		pc = FUNC3(xfer, 0);
		if (FUNC1(sc->sc_fifo.fp[USB_FIFO_TX], pc,
		    0, FUNC4(xfer), &actlen, 0)) {
			FUNC5(xfer, 0, actlen);
			FUNC2(xfer);
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