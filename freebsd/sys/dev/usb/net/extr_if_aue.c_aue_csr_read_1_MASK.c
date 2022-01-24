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
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct aue_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUE_UR_READREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t
FUNC2(struct aue_softc *sc, uint16_t reg)
{
	struct usb_device_request req;
	usb_error_t err;
	uint8_t val;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = AUE_UR_READREG;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, reg);
	FUNC0(req.wLength, 1);

	err = FUNC1(&sc->sc_ue, &req, &val, 1000);
	if (err)
		return (0);
	return (val);
}