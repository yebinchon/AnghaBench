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
struct TYPE_3__ {scalar_t__ stall_pipe; } ;
struct usb_xfer {TYPE_2__* xroot; TYPE_1__ flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct usb_xfer *xfer)
{
	if (xfer == NULL) {
		/* tearing down */
		return;
	}
	FUNC2(xfer, MA_OWNED);

	/* avoid any races by locking the USB mutex */
	FUNC0(xfer->xroot->bus);

	xfer->flags.stall_pipe = 0;

	FUNC1(xfer->xroot->bus);
}