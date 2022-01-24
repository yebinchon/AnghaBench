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
struct musbotg_td {int error; int max_frame_size; int remainder; int short_pkt; int offset; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {int sc_ep0_cmd; void* sc_bounce_buf; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int MUSB2_MASK_CSR0L_SENTSTALL ; 
 int MUSB2_MASK_CSR0L_SETUPEND ; 
 int MUSB2_MASK_CSR0L_TXPKTRDY ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC3 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static uint8_t
FUNC10(struct musbotg_td *td)
{
	struct usb_page_search buf_res;
	struct musbotg_softc *sc;
	uint16_t count;
	uint8_t csr;

	/* get pointer to softc */
	sc = FUNC4(td->pc);

	/* select endpoint 0 */
	FUNC3(sc, MUSB2_REG_EPINDEX, 0);

	/* check if a command is pending */
	if (sc->sc_ep0_cmd) {
		FUNC3(sc, MUSB2_REG_TXCSRL, sc->sc_ep0_cmd);
		sc->sc_ep0_cmd = 0;
	}
	/* read out FIFO status */
	csr = FUNC1(sc, MUSB2_REG_TXCSRL);

	FUNC0(4, "csr=0x%02x\n", csr);

	if (csr & (MUSB2_MASK_CSR0L_SETUPEND |
	    MUSB2_MASK_CSR0L_SENTSTALL)) {
		/*
	         * The current transfer was aborted
	         * by the USB Host
	         */
		td->error = 1;
		return (0);		/* complete */
	}
	if (csr & MUSB2_MASK_CSR0L_TXPKTRDY) {
		return (1);		/* not complete */
	}
	count = td->max_frame_size;
	if (td->remainder < count) {
		/* we have a short packet */
		td->short_pkt = 1;
		count = td->remainder;
	}
	while (count > 0) {
		uint32_t temp;

		FUNC9(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > count) {
			buf_res.length = count;
		}
		/* check for unaligned memory address */
		if (FUNC5(buf_res.buffer) & 3) {

			FUNC8(td->pc, td->offset,
			    sc->sc_bounce_buf, count);

			temp = count & ~3;

			if (temp) {
				/* transmit data 4 bytes at a time */
				FUNC7(sc->sc_io_tag, sc->sc_io_hdl,
				    FUNC2(0), sc->sc_bounce_buf,
				    temp / 4);
			}
			temp = count & 3;
			if (temp) {
				/* receive data 1 byte at a time */
				FUNC6(sc->sc_io_tag, sc->sc_io_hdl,
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
			FUNC7(sc->sc_io_tag, sc->sc_io_hdl,
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
		FUNC6(sc->sc_io_tag, sc->sc_io_hdl,
		    FUNC2(0), buf_res.buffer, buf_res.length);

		/* update counters */
		count -= buf_res.length;
		td->offset += buf_res.length;
		td->remainder -= buf_res.length;
	}

	/* check remainder */
	if (td->remainder == 0) {
		if (td->short_pkt) {
			sc->sc_ep0_cmd = MUSB2_MASK_CSR0L_TXPKTRDY;
			return (0);	/* complete */
		}
		/* else we need to transmit a short packet */
	}
	/* write command */
	FUNC3(sc, MUSB2_REG_TXCSRL,
	    MUSB2_MASK_CSR0L_TXPKTRDY);

	return (1);			/* not complete */
}