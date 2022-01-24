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
struct uss820dci_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_xfer {TYPE_1__ flags_int; int /*<<< orphan*/  endpoint; TYPE_2__* xroot; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 struct uss820dci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct usb_xfer *xfer, usb_error_t error)
{
	struct uss820dci_softc *sc = FUNC4(xfer->xroot->bus);

	FUNC1(xfer->xroot->bus, MA_OWNED);

	FUNC0(2, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	FUNC2(&sc->sc_bus);

	if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
		FUNC6(xfer, 0);
	}
	/* dequeue transfer and start next transfer */
	FUNC5(xfer, error);

	FUNC3(&sc->sc_bus);
}