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
struct urio_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; TYPE_1__ sc_fifo; } ;

/* Variables and functions */
 int URIO_FLAG_WRITE_STALL ; 
 size_t URIO_T_WR_CS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_TX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_fifo*,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urio_softc* FUNC7 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct urio_softc *sc = FUNC7(xfer);
	struct usb_fifo *f = sc->sc_fifo.fp[USB_FIFO_TX];
	struct usb_page_cache *pc;
	uint32_t actlen;

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
	case USB_ST_SETUP:
		if (sc->sc_flags & URIO_FLAG_WRITE_STALL) {
			FUNC2(sc->sc_xfer[URIO_T_WR_CS]);
			return;
		}
		pc = FUNC4(xfer, 0);
		if (FUNC1(f, pc, 0,
		    FUNC5(xfer), &actlen, 0)) {

			FUNC6(xfer, 0, actlen);
			FUNC3(xfer);
		}
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			sc->sc_flags |= URIO_FLAG_WRITE_STALL;
			FUNC2(sc->sc_xfer[URIO_T_WR_CS]);
		}
		return;
	}
}