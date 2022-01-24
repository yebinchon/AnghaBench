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
struct usb_xfer {scalar_t__ timeout; TYPE_2__* xroot; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  intr_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  atmegadci_timeout ; 
 scalar_t__ FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct usb_xfer *xfer)
{
	FUNC0(9, "\n");

	/* poll one time - will turn on interrupts */
	if (FUNC1(xfer)) {

		/* put transfer on interrupt queue */
		FUNC2(&xfer->xroot->bus->intr_q, xfer);

		/* start timeout, if any */
		if (xfer->timeout != 0) {
			FUNC3(xfer,
			    &atmegadci_timeout, xfer->timeout);
		}
	}
}