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
struct usb_endpoint_descriptor {int bEndpointAddress; int bmAttributes; } ;
struct usb_endpoint {struct usb_endpoint_descriptor* edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int /*<<< orphan*/  bus; TYPE_1__ flags; } ;
struct avr32dci_softc {int dummy; } ;

/* Variables and functions */
 struct avr32dci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct usb_endpoint*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UE_ADDR ; 
 int UE_DIR_IN ; 
 int UE_DIR_OUT ; 
 int UE_XFERTYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (struct avr32dci_softc*,int,int,int) ; 

__attribute__((used)) static void
FUNC4(struct usb_device *udev, struct usb_endpoint *pipe)
{
	struct avr32dci_softc *sc;
	struct usb_endpoint_descriptor *ed;

	FUNC1(5, "pipe=%p\n", pipe);

	FUNC2(udev->bus, MA_OWNED);

	/* check mode */
	if (udev->flags.usb_mode != USB_MODE_DEVICE) {
		/* not supported */
		return;
	}
	/* get softc */
	sc = FUNC0(udev->bus);

	/* get endpoint descriptor */
	ed = pipe->edesc;

	/* reset endpoint */
	FUNC3(sc,
	    (ed->bEndpointAddress & UE_ADDR),
	    (ed->bmAttributes & UE_XFERTYPE),
	    (ed->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT)));
}