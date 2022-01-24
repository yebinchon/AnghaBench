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
typedef  int uint32_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  UA20_CS_CUR ; 
 int UA20_CS_SAM_FREQ_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ *,struct usb_device_request*,int*) ; 

__attribute__((used)) static usb_error_t
FUNC4(struct usb_device *udev, uint8_t iface_no,
    uint8_t clockid, uint32_t speed)
{
	struct usb_device_request req;
	uint8_t data[4];

	FUNC0(6, "ifaceno=%d clockid=%d speed=%u\n",
	    iface_no, clockid, speed);

	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UA20_CS_CUR;
	FUNC2(req.wValue, UA20_CS_SAM_FREQ_CONTROL, 0);
	FUNC2(req.wIndex, clockid, iface_no);
	FUNC1(req.wLength, 4);
	data[0] = speed;
	data[1] = speed >> 8;
	data[2] = speed >> 16;
	data[3] = speed >> 24;

	return (FUNC3(udev, NULL, &req, data));
}