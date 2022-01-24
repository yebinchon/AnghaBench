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
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct uplcom_softc {scalar_t__ sc_data_iface_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPLCOM_SET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct uplcom_softc *sc, struct usb_device *udev)
{
	struct usb_device_request req;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = UPLCOM_SET_REQUEST;
	FUNC0(req.wValue, 0);
	req.wIndex[0] = sc->sc_data_iface_no;
	req.wIndex[1] = 0;
	FUNC0(req.wLength, 0);

	return (FUNC1(udev, NULL, &req, NULL));
}