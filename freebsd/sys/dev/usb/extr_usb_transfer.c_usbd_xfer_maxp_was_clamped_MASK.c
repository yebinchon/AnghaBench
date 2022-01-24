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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  maxp_was_clamped; } ;
struct usb_xfer {TYPE_1__ flags_int; } ;

/* Variables and functions */

uint8_t
FUNC0(struct usb_xfer *xfer)
{
	return (xfer->flags_int.maxp_was_clamped);
}