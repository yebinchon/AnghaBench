#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_xfer {scalar_t__ timeout; TYPE_1__* xroot; struct dwc_otg_td* td_transfer_cache; } ;
struct dwc_otg_td {scalar_t__ ep_type; int hcchar; } ;
struct TYPE_5__ {scalar_t__ status_device_mode; } ;
struct dwc_otg_softc {int /*<<< orphan*/  sc_bus; TYPE_2__ sc_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  intr_q; } ;
struct TYPE_4__ {TYPE_3__* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct dwc_otg_softc* FUNC1 (TYPE_3__*) ; 
 int HCCHAR_EPDIR_IN ; 
 scalar_t__ UE_ISOCHRONOUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  dwc_otg_timeout ; 
 scalar_t__ FUNC5 (struct dwc_otg_softc*,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_otg_softc*,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer)
{
	struct dwc_otg_softc *sc = FUNC1(xfer->xroot->bus);

	FUNC0(9, "\n");

	/*
	 * Poll one time in device mode, which will turn on the
	 * endpoint interrupts. Else wait for SOF interrupt in host
	 * mode.
	 */
	FUNC2(&sc->sc_bus);

	if (sc->sc_flags.status_device_mode != 0) {
		FUNC6(sc, xfer);
		if (FUNC5(sc, xfer))
			goto done;
	} else {
		struct dwc_otg_td *td = xfer->td_transfer_cache;
		if (td->ep_type == UE_ISOCHRONOUS &&
		    (td->hcchar & HCCHAR_EPDIR_IN) == 0) {
			/*
			 * Need to start ISOCHRONOUS OUT transfer ASAP
			 * because execution is delayed by one 125us
			 * microframe:
			 */
			FUNC6(sc, xfer);
			if (FUNC5(sc, xfer))
				goto done;
		}
	}

	/* put transfer on interrupt queue */
	FUNC7(&xfer->xroot->bus->intr_q, xfer);

	/* start timeout, if any */
	if (xfer->timeout != 0) {
		FUNC8(xfer,
		    &dwc_otg_timeout, xfer->timeout);
	}

	if (sc->sc_flags.status_device_mode != 0)
		goto done;

	/* enable SOF interrupt, if any */
	FUNC4(sc);
done:
	FUNC3(&sc->sc_bus);
}