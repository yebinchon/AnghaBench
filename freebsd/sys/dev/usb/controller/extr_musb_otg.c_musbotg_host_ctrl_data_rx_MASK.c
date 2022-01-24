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
struct musbotg_td {int channel; int transaction_started; int dev_addr; int haddr; int hport; int transfer_type; int error; int max_frame_size; int short_pkt; int remainder; int offset; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {void* sc_bounce_buf; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int MAX_NAK_TO ; 
 int MUSB2_MASK_CSR0L_ERROR ; 
 int MUSB2_MASK_CSR0L_NAKTIMO ; 
 int MUSB2_MASK_CSR0L_REQPKT ; 
 int MUSB2_MASK_CSR0L_RXPKTRDY ; 
 int MUSB2_MASK_CSR0L_RXSTALL ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCOUNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_RXNAKLIMIT ; 
 int /*<<< orphan*/  MUSB2_REG_RXTI ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC7 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC12 (struct musbotg_softc*,struct musbotg_td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static uint8_t
FUNC16(struct musbotg_td *td)
{
	struct usb_page_search buf_res;
	struct musbotg_softc *sc;
	uint16_t count;
	uint8_t csr;
	uint8_t got_short;

	/* get pointer to softc */
	sc = FUNC8(td->pc);

	if (td->channel == -1)
		td->channel = FUNC12(sc, td, 0);

	/* EP0 is busy, wait */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d\n", td->channel);

	/* select endpoint 0 */
	FUNC7(sc, MUSB2_REG_EPINDEX, 0);

	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_TXCSRL);

	FUNC0(4, "csr=0x%02x\n", csr);

	got_short = 0;
	if (!td->transaction_started) {
		td->transaction_started = 1;

		FUNC7(sc, MUSB2_REG_RXNAKLIMIT, MAX_NAK_TO);

		FUNC7(sc, FUNC4(0),
		    td->dev_addr);
		FUNC7(sc, FUNC5(0), td->haddr);
		FUNC7(sc, FUNC6(0), td->hport);
		FUNC7(sc, MUSB2_REG_RXTI, td->transfer_type);

		FUNC7(sc, MUSB2_REG_TXCSRL,
		    MUSB2_MASK_CSR0L_REQPKT);

		return (1);
	}

	if (csr & MUSB2_MASK_CSR0L_NAKTIMO) {
		csr &= ~MUSB2_MASK_CSR0L_REQPKT;
		FUNC7(sc, MUSB2_REG_TXCSRL, csr);

		csr &= ~MUSB2_MASK_CSR0L_NAKTIMO;
		FUNC7(sc, MUSB2_REG_TXCSRL, csr);

		td->error = 1;
	}

	/* Failed */
	if (csr & (MUSB2_MASK_CSR0L_RXSTALL |
	    MUSB2_MASK_CSR0L_ERROR))
	{
		/* Clear status bit */
		FUNC7(sc, MUSB2_REG_TXCSRL, 0);
		FUNC0(1, "error bit set, csr=0x%02x\n", csr);
		td->error = 1;
	}

	if (td->error) {
		FUNC13(sc, td);
		return (0);	/* we are complete */
	}

	if (!(csr & MUSB2_MASK_CSR0L_RXPKTRDY))
		return (1); /* not yet */

	/* get the packet byte count */
	count = FUNC2(sc, MUSB2_REG_RXCOUNT);

	/* verify the packet byte count */
	if (count != td->max_frame_size) {
		if (count < td->max_frame_size) {
			/* we have a short packet */
			td->short_pkt = 1;
			got_short = 1;
		} else {
			/* invalid USB packet */
			td->error = 1;
			FUNC13(sc, td);
			return (0);	/* we are complete */
		}
	}
	/* verify the packet byte count */
	if (count > td->remainder) {
		/* invalid USB packet */
		td->error = 1;
		FUNC13(sc, td);
		return (0);		/* we are complete */
	}
	while (count > 0) {
		uint32_t temp;

		FUNC15(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > count) {
			buf_res.length = count;
		}
		/* check for unaligned memory address */
		if (FUNC9(buf_res.buffer) & 3) {

			temp = count & ~3;

			if (temp) {
				/* receive data 4 bytes at a time */
				FUNC11(sc->sc_io_tag, sc->sc_io_hdl,
				    FUNC3(0), sc->sc_bounce_buf,
				    temp / 4);
			}
			temp = count & 3;
			if (temp) {
				/* receive data 1 byte at a time */
				FUNC10(sc->sc_io_tag, sc->sc_io_hdl,
				    FUNC3(0),
				    (void *)(&sc->sc_bounce_buf[count / 4]), temp);
			}
			FUNC14(td->pc, td->offset,
			    sc->sc_bounce_buf, count);

			/* update offset and remainder */
			td->offset += count;
			td->remainder -= count;
			break;
		}
		/* check if we can optimise */
		if (buf_res.length >= 4) {

			/* receive data 4 bytes at a time */
			FUNC11(sc->sc_io_tag, sc->sc_io_hdl,
			    FUNC3(0), buf_res.buffer,
			    buf_res.length / 4);

			temp = buf_res.length & ~3;

			/* update counters */
			count -= temp;
			td->offset += temp;
			td->remainder -= temp;
			continue;
		}
		/* receive data */
		FUNC10(sc->sc_io_tag, sc->sc_io_hdl,
		    FUNC3(0), buf_res.buffer, buf_res.length);

		/* update counters */
		count -= buf_res.length;
		td->offset += buf_res.length;
		td->remainder -= buf_res.length;
	}

	csr &= ~MUSB2_MASK_CSR0L_RXPKTRDY;
	FUNC7(sc, MUSB2_REG_TXCSRL, csr);

	/* check if we are complete */
	if ((td->remainder == 0) || got_short) {
		if (td->short_pkt) {
			/* we are complete */

			FUNC13(sc, td);
			return (0);
		}
		/* else need to receive a zero length packet */
	}

	td->transaction_started = 1;
	FUNC7(sc, MUSB2_REG_TXCSRL,
	    MUSB2_MASK_CSR0L_REQPKT);

	return (1);			/* not complete */
}