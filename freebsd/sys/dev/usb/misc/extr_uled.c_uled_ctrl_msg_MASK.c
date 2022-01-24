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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; void* bRequest; void* bmRequestType; } ;
struct uled_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct uled_softc *sc, uint8_t rt, uint8_t reqno,
    uint16_t value, uint16_t index, void *buf, uint16_t buflen)
{
	struct usb_device_request req;

	req.bmRequestType = rt;
	req.bRequest = reqno;
	FUNC0(req.wValue, value);
	FUNC0(req.wIndex, index);
	FUNC0(req.wLength, buflen);

	return (FUNC1(sc->sc_udev, &sc->sc_mtx, &req, buf,
	    0, NULL, 2000));
}