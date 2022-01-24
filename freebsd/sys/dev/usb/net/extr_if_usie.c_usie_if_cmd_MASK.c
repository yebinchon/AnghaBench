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
typedef  int /*<<< orphan*/  uint8_t ;
struct usie_softc {int sc_if_ifnum; } ;
struct usie_hip {scalar_t__ param; int /*<<< orphan*/  id; scalar_t__ len; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCDC_SEND_ENCAPSULATED_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int FUNC2 (struct usie_softc*,struct usb_device_request*,struct usie_hip*) ; 

__attribute__((used)) static int
FUNC3(struct usie_softc *sc, uint8_t cmd)
{
	struct usb_device_request req;
	struct usie_hip msg;

	msg.len = 0;
	msg.id = cmd;
	msg.param = 0;

	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UCDC_SEND_ENCAPSULATED_COMMAND;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, sc->sc_if_ifnum);
	FUNC1(req.wLength, sizeof(msg));

	FUNC0("cmd=%x\n", cmd);

	return (FUNC2(sc, &req, &msg));
}