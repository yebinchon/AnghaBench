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
struct TYPE_2__ {int usb_mode; } ;
struct usb_device {TYPE_1__ flags; } ;
typedef  enum usb_hc_mode { ____Placeholder_usb_hc_mode } usb_hc_mode ;

/* Variables and functions */

enum usb_hc_mode
FUNC0(struct usb_device *udev)
{
	return (udev->flags.usb_mode);
}