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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ufm_softc {int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ufm_softc *sc, uint8_t request,
    uint16_t value, uint16_t index, uint8_t *retbuf)
{
	int error;

	struct usb_device_request req;
	uint8_t buf[1];

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = request;
	FUNC0(req.wValue, value);
	FUNC0(req.wIndex, index);
	FUNC0(req.wLength, 1);

	error = FUNC1(sc->sc_udev, NULL, &req, buf);

	if (retbuf) {
		*retbuf = buf[0];
	}
	if (error) {
		return (ENXIO);
	}
	return (0);
}