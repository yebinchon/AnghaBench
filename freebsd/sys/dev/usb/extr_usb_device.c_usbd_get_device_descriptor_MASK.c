#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_device_descriptor {int dummy; } ;
struct usb_device {struct usb_device_descriptor ddesc; } ;

/* Variables and functions */

struct usb_device_descriptor *
FUNC0(struct usb_device *udev)
{
	if (udev == NULL)
		return (NULL);		/* be NULL safe */
	return (&udev->ddesc);
}