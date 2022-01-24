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
typedef  int uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
struct atmegadci_td {int ep_no; int did_stall; int remainder; int offset; int /*<<< orphan*/  pc; } ;
struct atmegadci_softc {int sc_dv_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 struct atmegadci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct atmegadci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmegadci_softc*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  ATMEGA_UDADDR ; 
 int /*<<< orphan*/  ATMEGA_UEBCHX ; 
 int /*<<< orphan*/  ATMEGA_UEBCLX ; 
 int /*<<< orphan*/  ATMEGA_UECONX ; 
 int ATMEGA_UECONX_EPEN ; 
 int ATMEGA_UECONX_STALLRQ ; 
 int /*<<< orphan*/  ATMEGA_UEDATX ; 
 int /*<<< orphan*/  ATMEGA_UEIENX ; 
 int ATMEGA_UEIENX_RXSTPE ; 
 int /*<<< orphan*/  ATMEGA_UEINTX ; 
 int ATMEGA_UEINTX_RXSTPI ; 
 int /*<<< orphan*/  ATMEGA_UENUM ; 
 int /*<<< orphan*/  FUNC3 (struct atmegadci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ UR_SET_ADDRESS ; 
 scalar_t__ UT_WRITE_DEVICE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 

__attribute__((used)) static uint8_t
FUNC6(struct atmegadci_td *td)
{
	struct atmegadci_softc *sc;
	struct usb_device_request req;
	uint16_t count;
	uint8_t temp;

	/* get pointer to softc */
	sc = FUNC0(td->pc);

	/* select endpoint number */
	FUNC3(sc, ATMEGA_UENUM, td->ep_no);

	/* check endpoint status */
	temp = FUNC1(sc, ATMEGA_UEINTX);

	FUNC4(5, "UEINTX=0x%02x\n", temp);

	if (!(temp & ATMEGA_UEINTX_RXSTPI)) {
		goto not_complete;
	}
	/* clear did stall */
	td->did_stall = 0;
	/* get the packet byte count */
	count =
	    (FUNC1(sc, ATMEGA_UEBCHX) << 8) |
	    (FUNC1(sc, ATMEGA_UEBCLX));

	/* mask away undefined bits */
	count &= 0x7FF;

	/* verify data length */
	if (count != td->remainder) {
		FUNC4(0, "Invalid SETUP packet "
		    "length, %d bytes\n", count);
		goto not_complete;
	}
	if (count != sizeof(req)) {
		FUNC4(0, "Unsupported SETUP packet "
		    "length, %d bytes\n", count);
		goto not_complete;
	}
	/* receive data */
	FUNC2(sc, ATMEGA_UEDATX,
	    (void *)&req, sizeof(req));

	/* copy data into real buffer */
	FUNC5(td->pc, 0, &req, sizeof(req));

	td->offset = sizeof(req);
	td->remainder = 0;

	/* sneak peek the set address */
	if ((req.bmRequestType == UT_WRITE_DEVICE) &&
	    (req.bRequest == UR_SET_ADDRESS)) {
		sc->sc_dv_addr = req.wValue[0] & 0x7F;
		/* must write address before ZLP */
		FUNC3(sc, ATMEGA_UDADDR, sc->sc_dv_addr);
	} else {
		sc->sc_dv_addr = 0xFF;
	}

	/* Clear SETUP packet interrupt and all other previous interrupts */
	FUNC3(sc, ATMEGA_UEINTX, 0);
	return (0);			/* complete */

not_complete:
	/* abort any ongoing transfer */
	if (!td->did_stall) {
		FUNC4(5, "stalling\n");
		FUNC3(sc, ATMEGA_UECONX,
		    ATMEGA_UECONX_EPEN |
		    ATMEGA_UECONX_STALLRQ);
		td->did_stall = 1;
	}
	if (temp & ATMEGA_UEINTX_RXSTPI) {
		/* clear SETUP packet interrupt */
		FUNC3(sc, ATMEGA_UEINTX, ~ATMEGA_UEINTX_RXSTPI);
	}
	/* we only want to know if there is a SETUP packet */
	FUNC3(sc, ATMEGA_UEIENX, ATMEGA_UEIENX_RXSTPE);
	return (1);			/* not complete */
}