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
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ure_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ URE_CTL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ure_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UR_SET_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC2 (int /*<<< orphan*/ *,struct usb_device_request*,void*,int) ; 

__attribute__((used)) static int
FUNC3(struct ure_softc *sc, uint8_t rw, uint16_t val, uint16_t index,
    void *buf, int len)
{
	struct usb_device_request req;

	FUNC0(sc, MA_OWNED);

	if (rw == URE_CTL_WRITE)
		req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	else
		req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = UR_SET_ADDRESS;
	FUNC1(req.wValue, val);
	FUNC1(req.wIndex, index);
	FUNC1(req.wLength, len);

	return (FUNC2(&sc->sc_ue, &req, buf, 1000));
}