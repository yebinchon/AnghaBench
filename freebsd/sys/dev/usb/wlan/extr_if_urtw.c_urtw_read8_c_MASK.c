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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct urtw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8187_GETREGS_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,struct usb_device_request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static usb_error_t
FUNC3(struct urtw_softc *sc, int val, uint8_t *data)
{
	struct usb_device_request req;
	usb_error_t error;

	FUNC0(sc);

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = URTW_8187_GETREGS_REQ;
	FUNC1(req.wValue, (val & 0xff) | 0xff00);
	FUNC1(req.wIndex, (val >> 8) & 0x3);
	FUNC1(req.wLength, sizeof(uint8_t));

	error = FUNC2(sc, &req, data);
	return (error);
}