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
typedef  void* uint8_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; void** wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UHF_PORT_U2_TIMEOUT ; 
 int /*<<< orphan*/  UR_SET_FEATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_OTHER ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,struct mtx*,struct usb_device_request*,int /*<<< orphan*/ ) ; 

usb_error_t
FUNC2(struct usb_device *udev, struct mtx *mtx,
    uint8_t port, uint8_t timeout)
{
	struct usb_device_request req;

	req.bmRequestType = UT_WRITE_CLASS_OTHER;
	req.bRequest = UR_SET_FEATURE;
	FUNC0(req.wValue, UHF_PORT_U2_TIMEOUT);
	req.wIndex[0] = port;
	req.wIndex[1] = timeout;
	FUNC0(req.wLength, 0);
	return (FUNC1(udev, mtx, &req, 0));
}