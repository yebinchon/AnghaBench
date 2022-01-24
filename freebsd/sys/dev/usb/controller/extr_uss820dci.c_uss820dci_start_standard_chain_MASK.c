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
struct uss820dci_softc {int /*<<< orphan*/  sc_bus; } ;
struct usb_xfer {scalar_t__ timeout; TYPE_1__* xroot; } ;
struct TYPE_4__ {int /*<<< orphan*/  intr_q; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uss820dci_softc* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  uss820dci_timeout ; 
 scalar_t__ FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer)
{
	struct uss820dci_softc *sc = FUNC3(xfer->xroot->bus);

	FUNC0(9, "\n");

	FUNC1(&sc->sc_bus);

	/* poll one time */
	FUNC8(xfer);

	if (FUNC7(xfer) == 0) {
		/*
		 * Only enable the endpoint interrupt when we are
		 * actually waiting for data, hence we are dealing
		 * with level triggered interrupts !
		 */
		FUNC6(xfer, 1);

		/* put transfer on interrupt queue */
		FUNC4(&xfer->xroot->bus->intr_q, xfer);

		/* start timeout, if any */
		if (xfer->timeout != 0) {
			FUNC5(xfer,
			    &uss820dci_timeout, xfer->timeout);
		}
	}
	FUNC2(&sc->sc_bus);
}