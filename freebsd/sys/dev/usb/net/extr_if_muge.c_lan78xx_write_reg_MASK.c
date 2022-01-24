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
typedef  int uint32_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct muge_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct muge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UVR_WRITE_REG ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct muge_softc*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct usb_device_request*,int*,int) ; 

__attribute__((used)) static int
FUNC5(struct muge_softc *sc, uint32_t off, uint32_t data)
{
	struct usb_device_request req;
	uint32_t buf;
	usb_error_t err;

	FUNC0(sc, MA_OWNED);

	buf = FUNC2(data);

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = UVR_WRITE_REG;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, off);
	FUNC1(req.wLength, 4);

	err = FUNC4(&sc->sc_ue, &req, &buf, 1000);
	if (err != 0)
		FUNC3(sc, "Failed to write register 0x%0x\n", off);
	return (err);
}