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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct usb_hub_descriptor {int dummy; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDESC_HUB ; 
 int /*<<< orphan*/  UR_GET_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_READ_CLASS_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,struct mtx*,struct usb_device_request*,struct usb_hub_descriptor*) ; 

usb_error_t
FUNC3(struct usb_device *udev, struct mtx *mtx,
    struct usb_hub_descriptor *hd, uint8_t nports)
{
	struct usb_device_request req;
	uint16_t len = (nports + 7 + (8 * 8)) / 8;

	req.bmRequestType = UT_READ_CLASS_DEVICE;
	req.bRequest = UR_GET_DESCRIPTOR;
	FUNC1(req.wValue, UDESC_HUB, 0);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, len);
	return (FUNC2(udev, mtx, &req, hd));
}