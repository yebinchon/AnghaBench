#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_xfer {size_t qh_pos; TYPE_1__* xroot; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sc_intr_stat; } ;
typedef  TYPE_2__ ehci_softc_t ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC3(struct usb_xfer *xfer)
{
	ehci_softc_t *sc = FUNC0(xfer->xroot->bus);

	sc->sc_intr_stat[xfer->qh_pos]--;

	FUNC1(xfer, USB_ERR_CANCELLED);

	/* bandwidth must be freed after device done */
	FUNC2(xfer);
}