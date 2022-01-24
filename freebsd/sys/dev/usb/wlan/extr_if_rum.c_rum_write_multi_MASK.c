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
typedef  scalar_t__ uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct rum_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  RT2573_WRITE_MULTI_MAC ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rum_softc*,struct usb_device_request*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct rum_softc *sc, uint16_t reg, void *buf, size_t len)
{
	struct usb_device_request req;
	usb_error_t error;
	size_t offset;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = RT2573_WRITE_MULTI_MAC;
	FUNC1(req.wValue, 0);

	/* write at most 64 bytes at a time */
	for (offset = 0; offset < len; offset += 64) {
		FUNC1(req.wIndex, reg + offset);
		FUNC1(req.wLength, FUNC0(len - offset, 64));

		error = FUNC3(sc, &req, (char *)buf + offset);
		if (error != 0) {
			FUNC2(sc->sc_dev,
			    "could not multi write MAC register: %s\n",
			    FUNC4(error));
			return (error);
		}
	}

	return (USB_ERR_NORMAL_COMPLETION);
}