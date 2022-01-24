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
struct musbotg_td {int channel; int transaction_started; int dev_addr; int haddr; int hport; int transfer_type; int toggle; int error; int max_frame_size; int short_pkt; int remainder; int offset; int /*<<< orphan*/  pc; int /*<<< orphan*/  reg_max_packet; } ;
struct musbotg_softc {void* sc_bounce_buf; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int MAX_NAK_TO ; 
 int MUSB2_MASK_CSRH_RXDT_VAL ; 
 int MUSB2_MASK_CSRH_RXDT_WREN ; 
 int MUSB2_MASK_CSRL_RXERROR ; 
 int MUSB2_MASK_CSRL_RXNAKTO ; 
 int MUSB2_MASK_CSRL_RXPKTRDY ; 
 int MUSB2_MASK_CSRL_RXREQPKT ; 
 int MUSB2_MASK_CSRL_RXSTALL ; 
 int MUSB2_MASK_TI_PROTO_ISOC ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCOUNT ; 
 int /*<<< orphan*/  MUSB2_REG_RXCSRH ; 
 int /*<<< orphan*/  MUSB2_REG_RXCSRL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  MUSB2_REG_RXMAXP ; 
 int /*<<< orphan*/  MUSB2_REG_RXNAKLIMIT ; 
 int /*<<< orphan*/  MUSB2_REG_RXTI ; 
 int /*<<< orphan*/  FUNC7 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct musbotg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct musbotg_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC13 (struct musbotg_softc*,struct musbotg_td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static uint8_t
FUNC17(struct musbotg_td *td)
{
	struct usb_page_search buf_res;
	struct musbotg_softc *sc;
	uint16_t count;
	uint8_t csr, csrh;
	uint8_t to;
	uint8_t got_short;

	/* get pointer to softc */
	sc = FUNC9(td->pc);

	if (td->channel == -1)
		td->channel = FUNC13(sc, td, 0);

	/* No free EPs */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d\n", td->channel);

	to = 8;				/* don't loop forever! */
	got_short = 0;

	/* select endpoint */
	FUNC7(sc, MUSB2_REG_EPINDEX, td->channel);

repeat:
	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_RXCSRL);
	FUNC0(4, "csr=0x%02x\n", csr);

	if (!td->transaction_started) {
		/* Function address */
		FUNC7(sc, FUNC4(td->channel),
		    td->dev_addr);

		/* SPLIT transaction */
		FUNC7(sc, FUNC5(td->channel), 
		    td->haddr);
		FUNC7(sc, FUNC6(td->channel), 
		    td->hport);

		/* RX NAK timeout */
		if (td->transfer_type & MUSB2_MASK_TI_PROTO_ISOC)
			FUNC7(sc, MUSB2_REG_RXNAKLIMIT, 0);
		else
			FUNC7(sc, MUSB2_REG_RXNAKLIMIT, MAX_NAK_TO);

		/* Protocol, speed, device endpoint */
		FUNC7(sc, MUSB2_REG_RXTI, td->transfer_type);

		/* Max packet size */
		FUNC8(sc, MUSB2_REG_RXMAXP, td->reg_max_packet);

		/* Data Toggle */
		csrh = FUNC1(sc, MUSB2_REG_RXCSRH);
		FUNC0(4, "csrh=0x%02x\n", csrh);

		csrh |= MUSB2_MASK_CSRH_RXDT_WREN;
		if (td->toggle)
			csrh |= MUSB2_MASK_CSRH_RXDT_VAL;
		else
			csrh &= ~MUSB2_MASK_CSRH_RXDT_VAL;

		/* Set data toggle */
		FUNC7(sc, MUSB2_REG_RXCSRH, csrh);

		/* write command */
		FUNC7(sc, MUSB2_REG_RXCSRL,
		    MUSB2_MASK_CSRL_RXREQPKT);

		td->transaction_started = 1;
		return (1);
	}

	/* clear NAK timeout */
	if (csr & MUSB2_MASK_CSRL_RXNAKTO) {
		FUNC0(4, "NAK Timeout\n");
		if (csr & MUSB2_MASK_CSRL_RXREQPKT) {
			csr &= ~MUSB2_MASK_CSRL_RXREQPKT;
			FUNC7(sc, MUSB2_REG_RXCSRL, csr);

			csr &= ~MUSB2_MASK_CSRL_RXNAKTO;
			FUNC7(sc, MUSB2_REG_RXCSRL, csr);
		}

		td->error = 1;
	}

	if (csr & MUSB2_MASK_CSRL_RXERROR) {
		FUNC0(4, "RXERROR\n");
		td->error = 1;
	}

	if (csr & MUSB2_MASK_CSRL_RXSTALL) {
		FUNC0(4, "RXSTALL\n");
		td->error = 1;
	}

	if (td->error) {
		FUNC14(sc, td);
		return (0);	/* we are complete */
	}

	if (!(csr & MUSB2_MASK_CSRL_RXPKTRDY)) {
		/* No data available yet */
		return (1);
	}

	td->toggle ^= 1;
	/* get the packet byte count */
	count = FUNC2(sc, MUSB2_REG_RXCOUNT);
	FUNC0(4, "count=0x%04x\n", count);

	/*
	 * Check for short or invalid packet:
	 */
	if (count != td->max_frame_size) {
		if (count < td->max_frame_size) {
			/* we have a short packet */
			td->short_pkt = 1;
			got_short = 1;
		} else {
			/* invalid USB packet */
			td->error = 1;
			FUNC14(sc, td);
			return (0);	/* we are complete */
		}
	}

	/* verify the packet byte count */
	if (count > td->remainder) {
		/* invalid USB packet */
		td->error = 1;
		FUNC14(sc, td);
		return (0);		/* we are complete */
	}

	while (count > 0) {
		uint32_t temp;

		FUNC16(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > count) {
			buf_res.length = count;
		}
		/* check for unaligned memory address */
		if (FUNC10(buf_res.buffer) & 3) {

			temp = count & ~3;

			if (temp) {
				/* receive data 4 bytes at a time */
				FUNC12(sc->sc_io_tag, sc->sc_io_hdl,
				    FUNC3(td->channel), sc->sc_bounce_buf,
				    temp / 4);
			}
			temp = count & 3;
			if (temp) {
				/* receive data 1 byte at a time */
				FUNC11(sc->sc_io_tag,
				    sc->sc_io_hdl, FUNC3(td->channel),
				    ((void *)&sc->sc_bounce_buf[count / 4]), temp);
			}
			FUNC15(td->pc, td->offset,
			    sc->sc_bounce_buf, count);

			/* update offset and remainder */
			td->offset += count;
			td->remainder -= count;
			break;
		}
		/* check if we can optimise */
		if (buf_res.length >= 4) {

			/* receive data 4 bytes at a time */
			FUNC12(sc->sc_io_tag, sc->sc_io_hdl,
			    FUNC3(td->channel), buf_res.buffer,
			    buf_res.length / 4);

			temp = buf_res.length & ~3;

			/* update counters */
			count -= temp;
			td->offset += temp;
			td->remainder -= temp;
			continue;
		}
		/* receive data */
		FUNC11(sc->sc_io_tag, sc->sc_io_hdl,
		    FUNC3(td->channel), buf_res.buffer,
		    buf_res.length);

		/* update counters */
		count -= buf_res.length;
		td->offset += buf_res.length;
		td->remainder -= buf_res.length;
	}

	/* clear status bits */
	FUNC7(sc, MUSB2_REG_RXCSRL, 0);

	/* check if we are complete */
	if ((td->remainder == 0) || got_short) {
		if (td->short_pkt) {
			/* we are complete */
			FUNC14(sc, td);
			return (0);
		}
		/* else need to receive a zero length packet */
	}

	/* Reset transaction state and restart */
	td->transaction_started = 0;

	if (--to)
		goto repeat;

	return (1);			/* not complete */
}