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
struct TYPE_3__ {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; void* bRequest; void* bmRequestType; } ;
typedef  TYPE_1__ usb_device_request_t ;
typedef  void* uint8_t ;
typedef  size_t uint16_t ;
struct udl_softc {int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct udl_softc *sc, uint8_t rt, uint8_t r,
    uint16_t index, uint16_t value, uint8_t *buf, size_t len)
{
	usb_device_request_t req;
	int error;

	req.bmRequestType = rt;
	req.bRequest = r;
	FUNC1(req.wIndex, index);
	FUNC1(req.wValue, value);
	FUNC1(req.wLength, len);

	error = FUNC2(sc->sc_udev, NULL,
	    &req, buf, 0, NULL, USB_DEFAULT_TIMEOUT);

	FUNC0("%s\n", FUNC3(error));

	return (error);
}