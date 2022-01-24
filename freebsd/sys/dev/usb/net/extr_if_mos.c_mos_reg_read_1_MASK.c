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
typedef  int uByte ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct mos_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MOS_UR_READREG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct usb_device_request*,int*,int) ; 

__attribute__((used)) static int
FUNC3(struct mos_softc *sc, int reg)
{
	struct usb_device_request req;
	usb_error_t err;
	uByte val = 0;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = MOS_UR_READREG;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, reg);
	FUNC1(req.wLength, 1);

	err = FUNC2(&sc->sc_ue, &req, &val, 1000);

	if (err) {
		FUNC0("mos_reg_read_1 error, reg: %d\n", reg);
		return (-1);
	}
	return (val);
}