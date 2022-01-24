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
typedef  int usb_error_t ;
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; void* bRequest; void* bmRequestType; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ *,struct usb_device_request*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static usb_error_t
FUNC4(struct usb_device *udev, uint8_t req_type, uint8_t request,
    uint16_t value, uint16_t index, uint16_t length)
{
	struct usb_device_request req;
	usb_error_t err;
	uint8_t buf[4];

	req.bmRequestType = req_type;
	req.bRequest = request;
	FUNC1(req.wValue, value);
	FUNC1(req.wIndex, index);
	FUNC1(req.wLength, length);

	err = FUNC2(udev, NULL, &req, buf);
	if (err) {
		FUNC0("error=%s\n", FUNC3(err));
		return (1);
	}
	return (0);
}