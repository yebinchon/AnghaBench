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
struct usb_device_request {int dummy; } ;
struct musbotg_td {int channel; int error; scalar_t__ remainder; int offset; int dev_addr; int haddr; int hport; int transfer_type; int transaction_started; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int MAX_NAK_TO ; 
 int MUSB2_MASK_CSR0H_FFLUSH ; 
 int MUSB2_MASK_CSR0L_ERROR ; 
 int MUSB2_MASK_CSR0L_NAKTIMO ; 
 int MUSB2_MASK_CSR0L_RXSTALL ; 
 int MUSB2_MASK_CSR0L_SETUPPKT ; 
 int MUSB2_MASK_CSR0L_TXFIFONEMPTY ; 
 int MUSB2_MASK_CSR0L_TXPKTRDY ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRH ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_TXNAKLIMIT ; 
 int /*<<< orphan*/  MUSB2_REG_TXTI ; 
 int /*<<< orphan*/  FUNC6 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC9 (struct musbotg_softc*,struct musbotg_td*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 

__attribute__((used)) static uint8_t
FUNC12(struct musbotg_td *td)
{
	struct musbotg_softc *sc;
	struct usb_device_request req;
	uint8_t csr, csrh;

	/* get pointer to softc */
	sc = FUNC7(td->pc);

	if (td->channel == -1)
		td->channel = FUNC9(sc, td, 1);

	/* EP0 is busy, wait */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d\n", td->channel);

	/* select endpoint 0 */
	FUNC6(sc, MUSB2_REG_EPINDEX, 0);

	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_TXCSRL);
	FUNC0(4, "csr=0x%02x\n", csr);

	/* Not ready yet yet */
	if (csr & MUSB2_MASK_CSR0L_TXPKTRDY)
		return (1);

	/* Failed */
	if (csr & (MUSB2_MASK_CSR0L_RXSTALL |
	    MUSB2_MASK_CSR0L_ERROR))
	{
		/* Clear status bit */
		FUNC6(sc, MUSB2_REG_TXCSRL, 0);
		FUNC0(1, "error bit set, csr=0x%02x\n", csr);
		td->error = 1;
	}

	if (csr & MUSB2_MASK_CSR0L_NAKTIMO) {
		FUNC0(1, "NAK timeout\n");

		if (csr & MUSB2_MASK_CSR0L_TXFIFONEMPTY) {
			csrh = FUNC1(sc, MUSB2_REG_TXCSRH);
			csrh |= MUSB2_MASK_CSR0H_FFLUSH;
			FUNC6(sc, MUSB2_REG_TXCSRH, csrh);
			csr = FUNC1(sc, MUSB2_REG_TXCSRL);
			if (csr & MUSB2_MASK_CSR0L_TXFIFONEMPTY) {
				csrh = FUNC1(sc, MUSB2_REG_TXCSRH);
				csrh |= MUSB2_MASK_CSR0H_FFLUSH;
				FUNC6(sc, MUSB2_REG_TXCSRH, csrh);
				csr = FUNC1(sc, MUSB2_REG_TXCSRL);
			}
		}

		csr &= ~MUSB2_MASK_CSR0L_NAKTIMO;
		FUNC6(sc, MUSB2_REG_TXCSRL, csr);

		td->error = 1;
	}

	if (td->error) {
		FUNC10(sc, td);
		return (0);
	}

	/* Fifo is not empty and there is no NAK timeout */
	if (csr & MUSB2_MASK_CSR0L_TXPKTRDY)
		return (1);

	/* check if we are complete */
	if (td->remainder == 0) {
		/* we are complete */
		FUNC10(sc, td);
		return (0);
	}

	/* copy data into real buffer */
	FUNC11(td->pc, 0, &req, sizeof(req));

	/* send data */
	FUNC8(sc->sc_io_tag, sc->sc_io_hdl,
	    FUNC2(0), (void *)&req, sizeof(req));

	/* update offset and remainder */
	td->offset += sizeof(req);
	td->remainder -= sizeof(req);


	FUNC6(sc, MUSB2_REG_TXNAKLIMIT, MAX_NAK_TO);
	FUNC6(sc, FUNC3(0), td->dev_addr);
	FUNC6(sc, FUNC4(0), td->haddr);
	FUNC6(sc, FUNC5(0), td->hport);
	FUNC6(sc, MUSB2_REG_TXTI, td->transfer_type);

	/* write command */
	FUNC6(sc, MUSB2_REG_TXCSRL,
	    MUSB2_MASK_CSR0L_TXPKTRDY | 
	    MUSB2_MASK_CSR0L_SETUPPKT);

	/* Just to be consistent, not used above */
	td->transaction_started = 1;

	return (1);			/* in progress */
}