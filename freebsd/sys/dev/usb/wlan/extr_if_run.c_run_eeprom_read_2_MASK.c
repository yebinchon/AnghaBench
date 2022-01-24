#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  TYPE_1__ usb_device_request_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  tmp ;
struct run_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2870_EEPROM_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int*) ; 

__attribute__((used)) static int
FUNC3(struct run_softc *sc, uint16_t addr, uint16_t *val)
{
	usb_device_request_t req;
	uint16_t tmp;
	int error;

	addr *= 2;
	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = RT2870_EEPROM_READ;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, addr);
	FUNC0(req.wLength, sizeof(tmp));

	error = FUNC2(sc->sc_udev, &sc->sc_mtx, &req, &tmp);
	if (error == 0)
		*val = FUNC1(tmp);
	else
		*val = 0xffff;
	return (error);
}