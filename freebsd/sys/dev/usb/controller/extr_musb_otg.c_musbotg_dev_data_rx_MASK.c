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
struct musbotg_td {int channel; int max_frame_size; int short_pkt; int error; int remainder; int offset; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {void* sc_bounce_buf; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int MUSB2_MASK_CSRL_RXOVERRUN ; 
 int MUSB2_MASK_CSRL_RXPKTRDY ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCOUNT ; 
 int /*<<< orphan*/  MUSB2_REG_RXCSRL ; 
 int /*<<< orphan*/  FUNC4 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC9 (struct musbotg_softc*,struct musbotg_td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct musbotg_softc*,struct musbotg_td*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static uint8_t
FUNC13(struct musbotg_td *td)
{
	struct usb_page_search buf_res;
	struct musbotg_softc *sc;
	uint16_t count;
	uint8_t csr;
	uint8_t to;
	uint8_t got_short;

	to = 8;				/* don't loop forever! */
	got_short = 0;

	/* get pointer to softc */
	sc = FUNC5(td->pc);

	if (td->channel == -1)
		td->channel = FUNC9(sc, td, 0);

	/* EP0 is busy, wait */
	if (td->channel == -1)
		return (1);

	/* select endpoint */
	FUNC4(sc, MUSB2_REG_EPINDEX, td->channel);

repeat:
	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_RXCSRL);

	FUNC0(4, "csr=0x%02x\n", csr);

	/* clear overrun */
	if (csr & MUSB2_MASK_CSRL_RXOVERRUN) {
		/* make sure we don't clear "RXPKTRDY" */
		FUNC4(sc, MUSB2_REG_RXCSRL,
		    MUSB2_MASK_CSRL_RXPKTRDY);
	}

	/* check status */
	if (!(csr & MUSB2_MASK_CSRL_RXPKTRDY))
		return (1); /* not complete */

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
			FUNC10(sc, td);
			return (0);	/* we are complete */
		}
	}
	/* verify the packet byte count */
	if (count > td->remainder) {
		/* invalid USB packet */
		td->error = 1;
		FUNC10(sc, td);
		return (0);		/* we are complete */
	}
	while (count > 0) {
		uint32_t temp;

		FUNC12(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > count) {
			buf_res.length = count;
		}
		/* check for unaligned memory address */
		if (FUNC6(buf_res.buffer) & 3) {

			temp = count & ~3;

			if (temp) {
				/* receive data 4 bytes at a time */
				FUNC8(sc->sc_io_tag, sc->sc_io_hdl,
				    FUNC3(td->channel), sc->sc_bounce_buf,
				    temp / 4);
			}
			temp = count & 3;
			if (temp) {
				/* receive data 1 byte at a time */
				FUNC7(sc->sc_io_tag,
				    sc->sc_io_hdl, FUNC3(td->channel),
				    ((void *)&sc->sc_bounce_buf[count / 4]), temp);
			}
			FUNC11(td->pc, td->offset,
			    sc->sc_bounce_buf, count);

			/* update offset and remainder */
			td->offset += count;
			td->remainder -= count;
			break;
		}
		/* check if we can optimise */
		if (buf_res.length >= 4) {

			/* receive data 4 bytes at a time */
			FUNC8(sc->sc_io_tag, sc->sc_io_hdl,
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
		FUNC7(sc->sc_io_tag, sc->sc_io_hdl,
		    FUNC3(td->channel), buf_res.buffer,
		    buf_res.length);

		/* update counters */
		count -= buf_res.length;
		td->offset += buf_res.length;
		td->remainder -= buf_res.length;
	}

	/* clear status bits */
	FUNC4(sc, MUSB2_REG_RXCSRL, 0);

	/* check if we are complete */
	if ((td->remainder == 0) || got_short) {
		if (td->short_pkt) {
			/* we are complete */
			FUNC10(sc, td);
			return (0);
		}
		/* else need to receive a zero length packet */
	}
	if (--to) {
		goto repeat;
	}
	return (1);			/* not complete */
}