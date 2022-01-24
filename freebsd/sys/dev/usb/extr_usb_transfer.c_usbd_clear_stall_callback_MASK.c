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
typedef  int uint8_t ;
struct usb_xfer {int* frlengths; int nframes; int /*<<< orphan*/  error; int /*<<< orphan*/  frbuffers; TYPE_3__* endpoint; TYPE_1__* xroot; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/ * wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_6__ {TYPE_2__* edesc; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_4__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  UF_ENDPOINT_HALT ; 
 int /*<<< orphan*/  UR_CLEAR_FEATURE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_ENDPOINT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 

uint8_t
FUNC7(struct usb_xfer *xfer1,
    struct usb_xfer *xfer2)
{
	struct usb_device_request req;

	if (xfer2 == NULL) {
		/* looks like we are tearing down */
		FUNC0("NULL input parameter\n");
		return (0);
	}
	FUNC2(xfer1, MA_OWNED);
	FUNC2(xfer2, MA_OWNED);

	switch (FUNC1(xfer1)) {
	case USB_ST_SETUP:

		/*
		 * pre-clear the data toggle to DATA0 ("umass.c" and
		 * "ata-usb.c" depends on this)
		 */

		FUNC4(xfer2->xroot->udev, xfer2->endpoint);

		/* setup a clear-stall packet */

		req.bmRequestType = UT_WRITE_ENDPOINT;
		req.bRequest = UR_CLEAR_FEATURE;
		FUNC3(req.wValue, UF_ENDPOINT_HALT);
		req.wIndex[0] = xfer2->endpoint->edesc->bEndpointAddress;
		req.wIndex[1] = 0;
		FUNC3(req.wLength, 0);

		/*
		 * "usbd_transfer_setup_sub()" will ensure that
		 * we have sufficient room in the buffer for
		 * the request structure!
		 */

		/* copy in the transfer */

		FUNC5(xfer1->frbuffers, 0, &req, sizeof(req));

		/* set length */
		xfer1->frlengths[0] = sizeof(req);
		xfer1->nframes = 1;

		FUNC6(xfer1);
		return (0);

	case USB_ST_TRANSFERRED:
		break;

	default:			/* Error */
		if (xfer1->error == USB_ERR_CANCELLED) {
			return (0);
		}
		break;
	}
	return (1);			/* Clear Stall Finished */
}