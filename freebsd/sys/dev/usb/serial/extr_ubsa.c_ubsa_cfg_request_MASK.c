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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ubsa_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; scalar_t__ sc_iface_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct ubsa_softc *sc, uint8_t index, uint16_t value)
{
	struct usb_device_request req;
	usb_error_t err;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = index;
	FUNC1(req.wValue, value);
	req.wIndex[0] = sc->sc_iface_no;
	req.wIndex[1] = 0;
	FUNC1(req.wLength, 0);

	err = FUNC2(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);
	if (err) {
		FUNC0(0, "device request failed, err=%s "
		    "(ignored)\n", FUNC3(err));
	}
}