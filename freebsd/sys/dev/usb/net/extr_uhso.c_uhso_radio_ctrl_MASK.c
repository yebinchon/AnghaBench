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
struct usb_device_request {int bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bmRequestType; } ;
struct uhso_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct uhso_softc *sc, int onoff)
{
	struct usb_device_request req;
	usb_error_t uerr;

	req.bmRequestType = UT_VENDOR;
	req.bRequest = onoff ? 0x82 : 0x81;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, 0);

	uerr = FUNC2(sc->sc_udev, NULL, &req, NULL);
	if (uerr != 0) {
		FUNC1(sc->sc_dev, "usbd_do_request_flags failed: %s\n",
		    FUNC3(uerr));
		return (-1);
	}
	return (onoff);
}