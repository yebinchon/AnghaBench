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
struct xhci_endpoint_ext {int trb_halted; scalar_t__ trb_running; } ;
struct usb_endpoint {int /*<<< orphan*/  edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int /*<<< orphan*/  bus; int /*<<< orphan*/ * parent_hub; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_MODE_HOST ; 
 struct xhci_endpoint_ext* FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct usb_device *udev, struct usb_endpoint *ep)
{
	struct xhci_endpoint_ext *pepext;

	FUNC0("\n");

	if (udev->flags.usb_mode != USB_MODE_HOST) {
		/* not supported */
		return;
	}
	if (udev->parent_hub == NULL) {
		/* root HUB has special endpoint handling */
		return;
	}

	pepext = FUNC3(udev, ep->edesc);

	FUNC1(udev->bus);
	pepext->trb_halted = 1;
	pepext->trb_running = 0;
	FUNC2(udev->bus);
}