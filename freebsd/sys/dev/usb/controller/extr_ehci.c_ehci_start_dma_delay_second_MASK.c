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
struct usb_xfer {TYPE_1__* xroot; } ;
struct ehci_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ehci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_softc*) ; 
 int /*<<< orphan*/  usb_dma_delay_done_cb ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*,void (*) (void*),int) ; 

__attribute__((used)) static void
FUNC4(struct usb_xfer *xfer)
{
	struct ehci_softc *sc = FUNC1(xfer->xroot->bus);

	FUNC0("\n");

	/* trigger doorbell */
	FUNC2(sc);

	/* give the doorbell 4ms */
	FUNC3(xfer,
	    (void (*)(void *))&usb_dma_delay_done_cb, 4);
}