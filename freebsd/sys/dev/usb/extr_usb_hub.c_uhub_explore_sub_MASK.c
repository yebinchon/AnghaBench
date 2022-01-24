#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_port {int dummy; } ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_device {scalar_t__ driver_added_refcount; TYPE_2__* hub; TYPE_1__ flags; } ;
struct usb_bus {scalar_t__ driver_added_refcount; } ;
struct uhub_softc {TYPE_3__* sc_udev; } ;
struct TYPE_6__ {struct usb_bus* bus; } ;
struct TYPE_5__ {scalar_t__ (* explore ) (struct usb_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  USB_IFACE_INDEX_ANY ; 
 scalar_t__ USB_MODE_DEVICE ; 
 scalar_t__ FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 struct usb_device* FUNC2 (struct usb_bus*,struct usb_port*) ; 
 scalar_t__ FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct uhub_softc *sc, struct usb_port *up)
{
	struct usb_bus *bus;
	struct usb_device *child;
	uint8_t refcount;
	usb_error_t err;

	bus = sc->sc_udev->bus;
	err = 0;

	/* get driver added refcount from USB bus */
	refcount = bus->driver_added_refcount;

	/* get device assosiated with the given port */
	child = FUNC2(bus, up);
	if (child == NULL) {
		/* nothing to do */
		goto done;
	}

	FUNC1(child);

	/* check if probe and attach should be done */

	if (child->driver_added_refcount != refcount) {
		child->driver_added_refcount = refcount;
		err = FUNC3(child,
		    USB_IFACE_INDEX_ANY);
		if (err) {
			goto done;
		}
	}
	/* start control transfer, if device mode */

	if (child->flags.usb_mode == USB_MODE_DEVICE)
		FUNC4(child);

	/* if a HUB becomes present, do a recursive HUB explore */

	if (child->hub)
		err = (child->hub->explore) (child);

done:
	return (err);
}