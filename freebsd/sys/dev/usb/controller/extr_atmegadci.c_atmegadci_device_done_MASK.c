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
typedef  int uint8_t ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_xfer {int endpointno; TYPE_2__ flags_int; int /*<<< orphan*/  endpoint; TYPE_1__* xroot; } ;
struct atmegadci_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 struct atmegadci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATMEGA_UEIENX ; 
 int /*<<< orphan*/  ATMEGA_UENUM ; 
 int /*<<< orphan*/  FUNC1 (struct atmegadci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UE_ADDR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer, usb_error_t error)
{
	struct atmegadci_softc *sc = FUNC0(xfer->xroot->bus);
	uint8_t ep_no;

	FUNC3(&sc->sc_bus, MA_OWNED);

	FUNC2(9, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
		ep_no = (xfer->endpointno & UE_ADDR);

		/* select endpoint number */
		FUNC1(sc, ATMEGA_UENUM, ep_no);

		/* disable endpoint interrupt */
		FUNC1(sc, ATMEGA_UEIENX, 0);

		FUNC2(15, "disabled interrupts!\n");
	}
	/* dequeue transfer and start next transfer */
	FUNC4(xfer, error);
}