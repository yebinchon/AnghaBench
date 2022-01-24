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
struct kue_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ KUE_CTL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC1 (struct kue_softc*,struct usb_device_request*,void*) ; 

__attribute__((used)) static int
FUNC2(struct kue_softc *sc, uint8_t rw, uint8_t breq,
    uint16_t val, void *data, int len)
{
	struct usb_device_request req;

	if (rw == KUE_CTL_WRITE)
		req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	else
		req.bmRequestType = UT_READ_VENDOR_DEVICE;


	req.bRequest = breq;
	FUNC0(req.wValue, val);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, len);

	return (FUNC1(sc, &req, data));
}