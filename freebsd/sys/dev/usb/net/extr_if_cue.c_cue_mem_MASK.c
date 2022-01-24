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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; scalar_t__ bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct cue_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 scalar_t__ CUE_CMD_READSRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct usb_device_request*,void*,int) ; 

__attribute__((used)) static int
FUNC2(struct cue_softc *sc, uint8_t cmd, uint16_t addr, void *buf, int len)
{
	struct usb_device_request req;

	if (cmd == CUE_CMD_READSRAM)
		req.bmRequestType = UT_READ_VENDOR_DEVICE;
	else
		req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = cmd;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, addr);
	FUNC0(req.wLength, len);

	return (FUNC1(&sc->sc_ue, &req, buf, 1000));
}