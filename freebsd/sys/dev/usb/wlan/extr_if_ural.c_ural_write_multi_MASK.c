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
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ural_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAL_WRITE_MULTI_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ural_softc*,struct usb_device_request*,void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct ural_softc *sc, uint16_t reg, void *buf, int len)
{
	struct usb_device_request req;
	usb_error_t error;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = RAL_WRITE_MULTI_MAC;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, reg);
	FUNC0(req.wLength, len);

	error = FUNC2(sc, &req, buf);
	if (error != 0) {
		FUNC1(sc->sc_dev, "could not write MAC register: %s\n",
		    FUNC3(error));
	}
}