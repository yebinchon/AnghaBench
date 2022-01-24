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
struct usb_status {int dummy; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UR_GET_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,struct mtx*,struct usb_device_request*,struct usb_status*) ; 

usb_error_t
FUNC2(struct usb_device *udev, struct mtx *mtx,
    struct usb_status *st)
{
	struct usb_device_request req;

	req.bmRequestType = UT_READ_DEVICE;
	req.bRequest = UR_GET_STATUS;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, sizeof(*st));
	return (FUNC1(udev, mtx, &req, st));
}