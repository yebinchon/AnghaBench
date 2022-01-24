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
typedef  scalar_t__ uint8_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; scalar_t__* wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  UR_SET_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,struct mtx*,struct usb_device_request*,int /*<<< orphan*/ ) ; 

usb_error_t
FUNC3(struct usb_device *udev, struct mtx *mtx, uint8_t conf)
{
	struct usb_device_request req;

	FUNC0("setting config %d\n", conf);

	/* do "set configuration" request */

	req.bmRequestType = UT_WRITE_DEVICE;
	req.bRequest = UR_SET_CONFIG;
	req.wValue[0] = conf;
	req.wValue[1] = 0;
	FUNC1(req.wIndex, 0);
	FUNC1(req.wLength, 0);
	return (FUNC2(udev, mtx, &req, 0));
}