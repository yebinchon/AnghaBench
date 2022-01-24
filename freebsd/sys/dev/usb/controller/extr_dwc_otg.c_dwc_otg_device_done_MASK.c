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
typedef  int /*<<< orphan*/  usb_error_t ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_xfer {struct dwc_otg_td* td_transfer_cache; TYPE_2__ flags_int; int /*<<< orphan*/  endpoint; TYPE_1__* xroot; } ;
struct dwc_otg_td {int dummy; } ;
struct dwc_otg_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dwc_otg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_otg_softc*,struct dwc_otg_td*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usb_xfer *xfer, usb_error_t error)
{
	struct dwc_otg_softc *sc = FUNC1(xfer->xroot->bus);

	FUNC0(9, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	FUNC2(&sc->sc_bus);

	if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
		/* Interrupts are cleared by the interrupt handler */
	} else {
		struct dwc_otg_td *td;

		td = xfer->td_transfer_cache;
 		if (td != NULL)
			FUNC4(sc, td);
	}
	/* dequeue transfer and start next transfer */
	FUNC5(xfer, error);

	FUNC3(&sc->sc_bus);
}