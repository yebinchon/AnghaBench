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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
struct saf1761_otg_td {int remainder; int did_stall; int /*<<< orphan*/  pc; } ;
struct saf1761_otg_softc {int sc_dv_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (struct saf1761_otg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOTG_BUF_LENGTH ; 
 int SOTG_BUF_LENGTH_BUFLEN_MASK ; 
 int SOTG_BUF_LENGTH_FILLED_MASK ; 
 int /*<<< orphan*/  SOTG_CTRL_FUNC ; 
 int /*<<< orphan*/  SOTG_CTRL_FUNC_STALL ; 
 int /*<<< orphan*/  SOTG_EP_INDEX ; 
 int /*<<< orphan*/  SOTG_EP_INDEX_EP0SETUP ; 
 scalar_t__ UR_SET_ADDRESS ; 
 scalar_t__ UT_WRITE_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (struct saf1761_otg_softc*,struct saf1761_otg_td*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 

__attribute__((used)) static uint8_t
FUNC6(struct saf1761_otg_softc *sc, struct saf1761_otg_td *td)
{
	struct usb_device_request req;
	uint32_t count;

	/* select the correct endpoint */
	FUNC3(sc, SOTG_EP_INDEX, SOTG_EP_INDEX_EP0SETUP);

	count = FUNC2(sc, SOTG_BUF_LENGTH);

	/* check buffer status */
	if ((count & SOTG_BUF_LENGTH_FILLED_MASK) == 0)
		goto busy;

	/* get buffer length */
	count &= SOTG_BUF_LENGTH_BUFLEN_MASK;

	FUNC1(5, "count=%u rem=%u\n", count, td->remainder);

	/* clear did stall */
	td->did_stall = 0;

	/* clear stall */
	FUNC3(sc, SOTG_CTRL_FUNC, 0);

	/* verify data length */
	if (count != td->remainder) {
		FUNC1(0, "Invalid SETUP packet "
		    "length, %d bytes\n", count);
		goto busy;
	}
	if (count != sizeof(req)) {
		FUNC1(0, "Unsupported SETUP packet "
		    "length, %d bytes\n", count);
		goto busy;
	}
	/* receive data */
	FUNC4(sc, td, sizeof(req));

	/* extract SETUP packet again */
	FUNC5(td->pc, 0, &req, sizeof(req));

	/* sneak peek the set address request */
	if ((req.bmRequestType == UT_WRITE_DEVICE) &&
	    (req.bRequest == UR_SET_ADDRESS)) {
		sc->sc_dv_addr = req.wValue[0] & 0x7F;
		FUNC0("Set address %d\n", sc->sc_dv_addr);
	} else {
		sc->sc_dv_addr = 0xFF;
	}
	return (0);			/* complete */

busy:
	/* abort any ongoing transfer */
	if (!td->did_stall) {
		FUNC1(5, "stalling\n");

		/* set stall */
		FUNC3(sc, SOTG_CTRL_FUNC, SOTG_CTRL_FUNC_STALL);

		td->did_stall = 1;
	}
	return (1);			/* not complete */
}