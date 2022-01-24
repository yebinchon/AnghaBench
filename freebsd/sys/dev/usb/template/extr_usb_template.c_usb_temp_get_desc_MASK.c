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
typedef  scalar_t__ uint16_t ;
struct usb_device_request {int bmRequestType; int* wValue; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; } ;
struct usb_device {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
#define  UDESC_CONFIG 135 
#define  UDESC_DEVICE 134 
#define  UDESC_DEVICE_QUALIFIER 133 
#define  UDESC_OTHER_SPEED_CONFIGURATION 132 
#define  UDESC_STRING 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  UR_GET_DESCRIPTOR 130 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
#define  UT_READ_CLASS_DEVICE 129 
#define  UT_READ_DEVICE 128 
 scalar_t__* FUNC1 (struct usb_device*,scalar_t__*,int) ; 
 scalar_t__* FUNC2 (struct usb_device*) ; 
 scalar_t__* FUNC3 (struct usb_device*) ; 
 scalar_t__* FUNC4 (struct usb_device*) ; 
 scalar_t__* FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC6 (struct usb_device*,struct usb_device_request*,scalar_t__*) ; 

__attribute__((used)) static usb_error_t
FUNC7(struct usb_device *udev, struct usb_device_request *req,
    const void **pPtr, uint16_t *pLength)
{
	const uint8_t *buf;
	uint16_t len;

	buf = NULL;
	len = 0;

	switch (req->bmRequestType) {
	case UT_READ_DEVICE:
		switch (req->bRequest) {
		case UR_GET_DESCRIPTOR:
			goto tr_handle_get_descriptor;
		default:
			goto tr_stalled;
		}
	case UT_READ_CLASS_DEVICE:
		switch (req->bRequest) {
		case UR_GET_DESCRIPTOR:
			goto tr_handle_get_class_descriptor;
		default:
			goto tr_stalled;
		}
	default:
		goto tr_stalled;
	}

tr_handle_get_descriptor:
	switch (req->wValue[1]) {
	case UDESC_DEVICE:
		if (req->wValue[0]) {
			goto tr_stalled;
		}
		buf = FUNC2(udev);
		goto tr_valid;
	case UDESC_DEVICE_QUALIFIER:
		if (udev->speed != USB_SPEED_HIGH) {
			goto tr_stalled;
		}
		if (req->wValue[0]) {
			goto tr_stalled;
		}
		buf = FUNC4(udev);
		goto tr_valid;
	case UDESC_OTHER_SPEED_CONFIGURATION:
		if (udev->speed != USB_SPEED_HIGH) {
			goto tr_stalled;
		}
	case UDESC_CONFIG:
		buf = FUNC1(udev,
		    &len, req->wValue[0]);
		goto tr_valid;
	case UDESC_STRING:
		buf = FUNC5(udev,
		    FUNC0(req->wIndex), req->wValue[0]);
		goto tr_valid;
	default:
		goto tr_stalled;
	}

tr_handle_get_class_descriptor:
	if (req->wValue[0]) {
		goto tr_stalled;
	}
	buf = FUNC3(udev);
	goto tr_valid;

tr_valid:
	if (buf == NULL)
		goto tr_stalled;
	if (len == 0)
		len = buf[0];
	*pPtr = buf;
	*pLength = len;
	return (0);	/* success */

tr_stalled:
	/* try to get a vendor specific descriptor */
	len = 0;
	buf = FUNC6(udev, req, &len);
	if (buf != NULL)
		goto tr_valid;
	*pPtr = NULL;
	*pLength = 0;
	return (0);	/* we ignore failures */
}