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
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct udav_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDAV_REQ_REG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct usb_device_request*,void*,int) ; 

__attribute__((used)) static int
FUNC2(struct udav_softc *sc, uint16_t offset, void *buf, int len)
{
	struct usb_device_request req;

	offset &= 0xff;
	len &= 0xff;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = UDAV_REQ_REG_WRITE;
	FUNC0(req.wValue, 0x0000);
	FUNC0(req.wIndex, offset);
	FUNC0(req.wLength, len);

	return (FUNC1(&sc->sc_ue, &req, buf, 1000));
}