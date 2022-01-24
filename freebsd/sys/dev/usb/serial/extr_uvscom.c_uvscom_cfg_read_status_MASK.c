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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct uvscom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UVSCOM_READ_STATUS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static uint16_t
FUNC4(struct uvscom_softc *sc)
{
	struct usb_device_request req;
	usb_error_t err;
	uint8_t data[2];

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = UVSCOM_READ_STATUS;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, 0);
	FUNC1(req.wLength, 2);

	err = FUNC2(sc->sc_udev, &sc->sc_ucom, 
	    &req, data, 0, 1000);
	if (err) {
		FUNC0(0, "device request failed, err=%s "
		    "(ignored)\n", FUNC3(err));
	}
	return (data[0] | (data[1] << 8));
}