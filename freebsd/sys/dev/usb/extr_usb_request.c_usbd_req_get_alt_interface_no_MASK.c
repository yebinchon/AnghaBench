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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {scalar_t__ bInterfaceNumber; } ;

/* Variables and functions */
 int /*<<< orphan*/  UR_GET_INTERFACE ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_INTERFACE ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,struct mtx*,struct usb_device_request*,int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

usb_error_t
FUNC3(struct usb_device *udev, struct mtx *mtx,
    uint8_t *alt_iface_no, uint8_t iface_index)
{
	struct usb_interface *iface = FUNC2(udev, iface_index);
	struct usb_device_request req;

	if ((iface == NULL) || (iface->idesc == NULL))
		return (USB_ERR_INVAL);

	req.bmRequestType = UT_READ_INTERFACE;
	req.bRequest = UR_GET_INTERFACE;
	FUNC0(req.wValue, 0);
	req.wIndex[0] = iface->idesc->bInterfaceNumber;
	req.wIndex[1] = 0;
	FUNC0(req.wLength, 1);
	return (FUNC1(udev, mtx, &req, alt_iface_no));
}