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
struct usb_endpoint_descriptor {int bEndpointAddress; int bmAttributes; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_endpoint {struct usb_endpoint_descriptor* edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int /*<<< orphan*/  bus; TYPE_1__ flags; } ;
struct dwc_otg_softc {int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_endpoint*) ; 
 struct dwc_otg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int UE_ADDR ; 
 int UE_DIR_IN ; 
 int UE_DIR_OUT ; 
 int UE_XFERTYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_otg_softc*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC7(struct usb_device *udev, struct usb_endpoint *ep)
{
	struct dwc_otg_softc *sc;
	struct usb_endpoint_descriptor *ed;

	FUNC0(5, "endpoint=%p\n", ep);

	FUNC3(udev->bus, MA_OWNED);

	/* check mode */
	if (udev->flags.usb_mode != USB_MODE_DEVICE) {
		/* not supported */
		return;
	}
	/* get softc */
	sc = FUNC1(udev->bus);

	FUNC4(&sc->sc_bus);

	/* get endpoint descriptor */
	ed = ep->edesc;

	/* reset endpoint */
	FUNC6(sc,
	    FUNC2(ed->wMaxPacketSize),
	    (ed->bEndpointAddress & UE_ADDR),
	    (ed->bmAttributes & UE_XFERTYPE),
	    (ed->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT)));

	FUNC5(&sc->sc_bus);
}