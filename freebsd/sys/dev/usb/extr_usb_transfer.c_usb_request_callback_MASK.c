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
typedef  int /*<<< orphan*/  usb_error_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_xfer {TYPE_1__ flags_int; } ;

/* Variables and functions */
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_xfer *xfer, usb_error_t error)
{
	if (xfer->flags_int.usb_mode == USB_MODE_DEVICE)
		FUNC0(xfer, error);
	else
		FUNC1(xfer, error);
}