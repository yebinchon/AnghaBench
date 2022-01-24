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
struct usb_xfer {scalar_t__ timeout; TYPE_1__* xroot; } ;
struct saf1761_otg_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  intr_q; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct saf1761_otg_softc* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  saf1761_otg_timeout ; 
 scalar_t__ FUNC5 (struct saf1761_otg_softc*,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct saf1761_otg_softc*,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer)
{
	struct saf1761_otg_softc *sc = FUNC1(xfer->xroot->bus);

	FUNC0(9, "\n");

	FUNC2(&sc->sc_bus);

	/* poll one time */
	FUNC6(sc, xfer);

	if (FUNC5(sc, xfer) == 0) {
		/*
		 * Only enable the endpoint interrupt when we are
		 * actually waiting for data, hence we are dealing
		 * with level triggered interrupts !
		 */
		FUNC4(xfer, 1);

		/* put transfer on interrupt queue */
		FUNC7(&xfer->xroot->bus->intr_q, xfer);

		/* start timeout, if any */
		if (xfer->timeout != 0) {
			FUNC8(xfer,
			    &saf1761_otg_timeout, xfer->timeout);
		}
	}
	FUNC3(&sc->sc_bus);
}