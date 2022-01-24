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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct urtw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8187_SETREGS_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,struct usb_device_request*,int*) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct urtw_softc *sc, uint8_t addr, int index,
    uint16_t *data)
{
	uint8_t buf[2];
	uint16_t data16;
	struct usb_device_request req;
	usb_error_t error = 0;

	data16 = *data;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = URTW_8187_SETREGS_REQ;
	FUNC0(req.wValue, addr);
	FUNC0(req.wIndex, index);
	FUNC0(req.wLength, sizeof(uint16_t));
	buf[0] = (data16 & 0x00ff);
	buf[1] = (data16 & 0xff00) >> 8;

	error = FUNC1(sc, &req, buf);

	return (error);
}