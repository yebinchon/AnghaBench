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
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {scalar_t__ bInterfaceNumber; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_interface*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  UR_SET_PROTOCOL ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,struct mtx*,struct usb_device_request*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

usb_error_t
FUNC4(struct usb_device *udev, struct mtx *mtx,
    uint8_t iface_index, uint16_t report)
{
	struct usb_interface *iface = FUNC3(udev, iface_index);
	struct usb_device_request req;

	if ((iface == NULL) || (iface->idesc == NULL)) {
		return (USB_ERR_INVAL);
	}
	FUNC0(5, "iface=%p, report=%d, endpt=%d\n",
	    iface, report, iface->idesc->bInterfaceNumber);

	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UR_SET_PROTOCOL;
	FUNC1(req.wValue, report);
	req.wIndex[0] = iface->idesc->bInterfaceNumber;
	req.wIndex[1] = 0;
	FUNC1(req.wLength, 0);
	return (FUNC2(udev, mtx, &req, 0));
}