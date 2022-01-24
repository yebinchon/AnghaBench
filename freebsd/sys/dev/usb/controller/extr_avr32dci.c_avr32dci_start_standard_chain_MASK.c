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
typedef  int uint8_t ;
struct usb_xfer {int endpointno; scalar_t__ timeout; TYPE_1__* xroot; } ;
struct avr32dci_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  intr_q; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;

/* Variables and functions */
 struct avr32dci_softc* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int UE_ADDR ; 
 int /*<<< orphan*/  FUNC3 (struct avr32dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  avr32dci_timeout ; 
 scalar_t__ FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct usb_xfer *xfer)
{
	FUNC2(9, "\n");

	/* poll one time - will turn on interrupts */
	if (FUNC4(xfer)) {
		uint8_t ep_no = xfer->endpointno & UE_ADDR;
		struct avr32dci_softc *sc = FUNC0(xfer->xroot->bus);

		FUNC3(sc, FUNC1(ep_no), 0);

		/* put transfer on interrupt queue */
		FUNC5(&xfer->xroot->bus->intr_q, xfer);

		/* start timeout, if any */
		if (xfer->timeout != 0) {
			FUNC6(xfer,
			    &avr32dci_timeout, xfer->timeout);
		}
	}
}