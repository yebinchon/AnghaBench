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
struct musbotg_td {int channel; int did_stall; int remainder; int offset; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {int sc_ep0_busy; int sc_dv_addr; scalar_t__ sc_ep0_cmd; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int MUSB2_MASK_CSR0L_DATAEND ; 
 int MUSB2_MASK_CSR0L_RXPKTRDY ; 
 scalar_t__ MUSB2_MASK_CSR0L_RXPKTRDY_CLR ; 
 scalar_t__ MUSB2_MASK_CSR0L_SENDSTALL ; 
 int MUSB2_MASK_CSR0L_SENTSTALL ; 
 int MUSB2_MASK_CSR0L_SETUPEND ; 
 scalar_t__ MUSB2_MASK_CSR0L_SETUPEND_CLR ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCOUNT ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC4 (struct musbotg_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct musbotg_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ UR_SET_ADDRESS ; 
 scalar_t__ UT_WRITE_DEVICE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (struct musbotg_softc*,struct musbotg_td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 

__attribute__((used)) static uint8_t
FUNC10(struct musbotg_td *td)
{
	struct musbotg_softc *sc;
	struct usb_device_request req;
	uint16_t count;
	uint8_t csr;

	/* get pointer to softc */
	sc = FUNC5(td->pc);

	if (td->channel == -1)
		td->channel = FUNC7(sc, td, 0);

	/* EP0 is busy, wait */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d\n", td->channel);

	/* select endpoint 0 */
	FUNC4(sc, MUSB2_REG_EPINDEX, 0);

	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_TXCSRL);

	FUNC0(4, "csr=0x%02x\n", csr);

	/*
	 * NOTE: If DATAEND is set we should not call the
	 * callback, hence the status stage is not complete.
	 */
	if (csr & MUSB2_MASK_CSR0L_DATAEND) {
		/* do not stall at this point */
		td->did_stall = 1;
		/* wait for interrupt */
		FUNC0(1, "CSR0 DATAEND\n");
		goto not_complete;
	}

	if (csr & MUSB2_MASK_CSR0L_SENTSTALL) {
		/* clear SENTSTALL */
		FUNC4(sc, MUSB2_REG_TXCSRL, 0);
		/* get latest status */
		csr = FUNC1(sc, MUSB2_REG_TXCSRL);
		/* update EP0 state */
		sc->sc_ep0_busy = 0;
	}
	if (csr & MUSB2_MASK_CSR0L_SETUPEND) {
		/* clear SETUPEND */
		FUNC4(sc, MUSB2_REG_TXCSRL,
		    MUSB2_MASK_CSR0L_SETUPEND_CLR);
		/* get latest status */
		csr = FUNC1(sc, MUSB2_REG_TXCSRL);
		/* update EP0 state */
		sc->sc_ep0_busy = 0;
	}
	if (sc->sc_ep0_busy) {
		FUNC0(1, "EP0 BUSY\n");
		goto not_complete;
	}
	if (!(csr & MUSB2_MASK_CSR0L_RXPKTRDY)) {
		goto not_complete;
	}
	/* get the packet byte count */
	count = FUNC2(sc, MUSB2_REG_RXCOUNT);

	/* verify data length */
	if (count != td->remainder) {
		FUNC0(1, "Invalid SETUP packet "
		    "length, %d bytes\n", count);
		FUNC4(sc, MUSB2_REG_TXCSRL,
		      MUSB2_MASK_CSR0L_RXPKTRDY_CLR);
		/* don't clear stall */
		td->did_stall = 1;
		goto not_complete;
	}
	if (count != sizeof(req)) {
		FUNC0(1, "Unsupported SETUP packet "
		    "length, %d bytes\n", count);
		FUNC4(sc, MUSB2_REG_TXCSRL,
		      MUSB2_MASK_CSR0L_RXPKTRDY_CLR);
		/* don't clear stall */
		td->did_stall = 1;
		goto not_complete;
	}
	/* clear did stall flag */
	td->did_stall = 0;

	/* receive data */
	FUNC6(sc->sc_io_tag, sc->sc_io_hdl,
	    FUNC3(0), (void *)&req, sizeof(req));

	/* copy data into real buffer */
	FUNC9(td->pc, 0, &req, sizeof(req));

	td->offset = sizeof(req);
	td->remainder = 0;

	/* set pending command */
	sc->sc_ep0_cmd = MUSB2_MASK_CSR0L_RXPKTRDY_CLR;

	/* we need set stall or dataend after this */
	sc->sc_ep0_busy = 1;

	/* sneak peek the set address */
	if ((req.bmRequestType == UT_WRITE_DEVICE) &&
	    (req.bRequest == UR_SET_ADDRESS)) {
		sc->sc_dv_addr = req.wValue[0] & 0x7F;
	} else {
		sc->sc_dv_addr = 0xFF;
	}

	FUNC8(sc, td);
	return (0);			/* complete */

not_complete:
	/* abort any ongoing transfer */
	if (!td->did_stall) {
		FUNC0(4, "stalling\n");
		FUNC4(sc, MUSB2_REG_TXCSRL,
		    MUSB2_MASK_CSR0L_SENDSTALL);
		td->did_stall = 1;
	}
	return (1);			/* not complete */
}