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
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_xfer {struct saf1761_otg_td* td_transfer_cache; TYPE_1__ flags_int; int /*<<< orphan*/  endpoint; TYPE_2__* xroot; } ;
struct saf1761_otg_td {int dummy; } ;
struct saf1761_otg_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct saf1761_otg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC5 (struct saf1761_otg_softc*,struct saf1761_otg_td*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct saf1761_otg_softc *sc = FUNC1(xfer->xroot->bus);

	FUNC2(xfer->xroot->bus, MA_OWNED);

	FUNC0(2, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	FUNC3(&sc->sc_bus);

	if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
		FUNC6(xfer, 0);
	} else {
		struct saf1761_otg_td *td;

		td = xfer->td_transfer_cache;

		if (td != NULL)
			FUNC5(sc, td);
	}

	/* dequeue transfer and start next transfer */
	FUNC7(xfer, error);

	FUNC4(&sc->sc_bus);
}