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
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct rum_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2573_MCU_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*,struct usb_device_request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct rum_softc *sc, int request)
{
	struct usb_device_request req;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = RT2573_MCU_CNTL;
	FUNC0(req.wValue, request);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, 0);

	return (FUNC1(sc, &req, NULL));
}