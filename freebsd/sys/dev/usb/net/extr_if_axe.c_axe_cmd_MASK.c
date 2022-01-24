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
typedef  int usb_error_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct axe_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct axe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC5 (int /*<<< orphan*/ *,struct usb_device_request*,void*,int) ; 

__attribute__((used)) static int
FUNC6(struct axe_softc *sc, int cmd, int index, int val, void *buf)
{
	struct usb_device_request req;
	usb_error_t err;

	FUNC3(sc, MA_OWNED);

	req.bmRequestType = (FUNC1(cmd) ?
	    UT_WRITE_VENDOR_DEVICE :
	    UT_READ_VENDOR_DEVICE);
	req.bRequest = FUNC0(cmd);
	FUNC4(req.wValue, val);
	FUNC4(req.wIndex, index);
	FUNC4(req.wLength, FUNC2(cmd));

	err = FUNC5(&sc->sc_ue, &req, buf, 1000);

	return (err);
}