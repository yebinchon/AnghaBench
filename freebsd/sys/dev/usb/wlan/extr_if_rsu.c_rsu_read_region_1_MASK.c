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
struct TYPE_3__ {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  TYPE_1__ usb_device_request_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct rsu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92S_REQ_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int FUNC1 (struct rsu_softc*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct rsu_softc *sc, uint16_t addr, uint8_t *buf,
    int len)
{
	usb_device_request_t req;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = R92S_REQ_REGS;
	FUNC0(req.wValue, addr);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, len);

	return (FUNC1(sc, &req, buf));
}