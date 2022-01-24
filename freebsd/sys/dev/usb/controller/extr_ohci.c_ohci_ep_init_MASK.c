#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_endpoint_descriptor {int bmAttributes; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_endpoint {int /*<<< orphan*/ * methods; } ;
struct TYPE_4__ {int /*<<< orphan*/  usb_mode; } ;
struct usb_device {scalar_t__ device_index; int /*<<< orphan*/  speed; TYPE_1__ flags; int /*<<< orphan*/  address; int /*<<< orphan*/  bus; } ;
struct TYPE_5__ {scalar_t__ sc_addr; } ;
typedef  TYPE_2__ ohci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_endpoint*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
#define  UE_BULK 131 
#define  UE_CONTROL 130 
#define  UE_INTERRUPT 129 
#define  UE_ISOCHRONOUS 128 
 int UE_XFERTYPE ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  ohci_device_bulk_methods ; 
 int /*<<< orphan*/  ohci_device_ctrl_methods ; 
 int /*<<< orphan*/  ohci_device_intr_methods ; 
 int /*<<< orphan*/  ohci_device_isoc_methods ; 

__attribute__((used)) static void
FUNC2(struct usb_device *udev, struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint *ep)
{
	ohci_softc_t *sc = FUNC1(udev->bus);

	FUNC0(2, "endpoint=%p, addr=%d, endpt=%d, mode=%d (%d)\n",
	    ep, udev->address,
	    edesc->bEndpointAddress, udev->flags.usb_mode,
	    sc->sc_addr);

	if (udev->device_index != sc->sc_addr) {
		switch (edesc->bmAttributes & UE_XFERTYPE) {
		case UE_CONTROL:
			ep->methods = &ohci_device_ctrl_methods;
			break;
		case UE_INTERRUPT:
			ep->methods = &ohci_device_intr_methods;
			break;
		case UE_ISOCHRONOUS:
			if (udev->speed == USB_SPEED_FULL) {
				ep->methods = &ohci_device_isoc_methods;
			}
			break;
		case UE_BULK:
			ep->methods = &ohci_device_bulk_methods;
			break;
		default:
			/* do nothing */
			break;
		}
	}
}