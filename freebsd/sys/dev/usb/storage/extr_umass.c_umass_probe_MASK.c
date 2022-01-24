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
struct usb_attach_arg {scalar_t__ usb_mode; } ;
struct umass_probe_proto {int error; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ USB_MODE_HOST ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct umass_probe_proto FUNC1 (int /*<<< orphan*/ ,struct usb_attach_arg*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	struct umass_probe_proto temp;

	if (uaa->usb_mode != USB_MODE_HOST) {
		return (ENXIO);
	}
	temp = FUNC1(dev, uaa);

	return (temp.error);
}