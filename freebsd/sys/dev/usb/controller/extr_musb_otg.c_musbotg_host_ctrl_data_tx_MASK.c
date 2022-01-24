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
typedef  int uint16_t ;
struct usb_page_search {int length; void* buffer; } ;
struct musbotg_td {int channel; int error; int transaction_started; scalar_t__ remainder; int short_pkt; int max_frame_size; int offset; int dev_addr; int haddr; int hport; int transfer_type; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {void* sc_bounce_buf; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int MAX_NAK_TO ; 
 int MUSB2_MASK_CSR0H_FFLUSH ; 
 int MUSB2_MASK_CSR0L_ERROR ; 
 int MUSB2_MASK_CSR0L_NAKTIMO ; 
 int MUSB2_MASK_CSR0L_RXSTALL ; 
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
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC11 (struct musbotg_softc*,struct musbotg_td*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static uint8_t
FUNC15(struct musbotg_td *td)
{
	struct usb_page_search buf_res;
	struct musbotg_softc *sc;
	uint16_t count;
	uint8_t csr, csrh;

	/* get pointer to softc */
	sc = FUNC7(td->pc);

	if (td->channel == -1)
		td->channel = FUNC11(sc, td, 1);

	/* No free EPs */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d\n", td->channel);

	/* select endpoint */
	FUNC6(sc, MUSB2_REG_EPINDEX, 0);

	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_TXCSRL);
	FUNC0(4, "csr=0x%02x\n", csr);

	if (csr & (MUSB2_MASK_CSR0L_RXSTALL |
	    MUSB2_MASK_CSR0L_ERROR)) {
		/* clear status bits */
		FUNC6(sc, MUSB2_REG_TXCSRL, 0);
		td->error = 1;
	}

	if (csr & MUSB2_MASK_CSR0L_NAKTIMO ) {

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
		FUNC12(sc, td);
		return (0);	/* complete */
	}

	/*
	 * Wait while FIFO is empty. 
	 * Do not flush it because it will cause transactions
	 * with size more then packet size. It might upset
	 * some devices
	 */
	if (csr & MUSB2_MASK_CSR0L_TXFIFONEMPTY)
		return (1);

	/* Packet still being processed */
	if (csr & MUSB2_MASK_CSR0L_TXPKTRDY)
		return (1);

	if (td->transaction_started) {
		/* check remainder */
		if (td->remainder == 0) {
			if (td->short_pkt) {
				FUNC12(sc, td);
				return (0);	/* complete */
			}
			/* else we need to transmit a short packet */
		}

		/* We're not complete - more transactions required */
		td->transaction_started = 0;
	}

	/* check for short packet */
	count = td->max_frame_size;
	if (td->remainder < count) {
		/* we have a short packet */
		td->short_pkt = 1;
		count = td->remainder;
	}

	while (count > 0) {
		uint32_t temp;

		FUNC14(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > count) {
			buf_res.length = count;
		}
		/* check for unaligned memory address */
		if (FUNC8(buf_res.buffer) & 3) {

			FUNC13(td->pc, td->offset,
			    sc->sc_bounce_buf, count);

			temp = count & ~3;

			if (temp) {
				/* transmit data 4 bytes at a time */
				FUNC10(sc->sc_io_tag,
				    sc->sc_io_hdl, FUNC2(0),
				    sc->sc_bounce_buf, temp / 4);
			}
			temp = count & 3;
			if (temp) {
				/* receive data 1 byte at a time */
				FUNC9(sc->sc_io_tag, sc->sc_io_hdl,
				    FUNC2(0),
				    ((void *)&sc->sc_bounce_buf[count / 4]), temp);
			}
			/* update offset and remainder */
			td->offset += count;
			td->remainder -= count;
			break;
		}
		/* check if we can optimise */
		if (buf_res.length >= 4) {

			/* transmit data 4 bytes at a time */
			FUNC10(sc->sc_io_tag, sc->sc_io_hdl,
			    FUNC2(0), buf_res.buffer,
			    buf_res.length / 4);

			temp = buf_res.length & ~3;

			/* update counters */
			count -= temp;
			td->offset += temp;
			td->remainder -= temp;
			continue;
		}
		/* transmit data */
		FUNC9(sc->sc_io_tag, sc->sc_io_hdl,
		    FUNC2(0), buf_res.buffer,
		    buf_res.length);

		/* update counters */
		count -= buf_res.length;
		td->offset += buf_res.length;
		td->remainder -= buf_res.length;
	}

	/* Function address */
	FUNC6(sc, FUNC3(0), td->dev_addr);
	FUNC6(sc, FUNC4(0), td->haddr);
	FUNC6(sc, FUNC5(0), td->hport);
	FUNC6(sc, MUSB2_REG_TXTI, td->transfer_type);

	/* TX NAK timeout */
	FUNC6(sc, MUSB2_REG_TXNAKLIMIT, MAX_NAK_TO);

	/* write command */
	FUNC6(sc, MUSB2_REG_TXCSRL,
	    MUSB2_MASK_CSR0L_TXPKTRDY);

	td->transaction_started = 1;

	return (1);			/* not complete */
}