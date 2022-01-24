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
typedef  scalar_t__ uint16_t ;
struct usb_page_search {scalar_t__ length; int /*<<< orphan*/  buffer; } ;
struct avr32dci_td {int ep_no; int error; scalar_t__ max_packet_size; scalar_t__ remainder; int short_pkt; int offset; int bank_shift; int /*<<< orphan*/  pc; } ;
struct avr32dci_softc {scalar_t__ physdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AVR32_EPTCTL_TX_PK_RDY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int AVR32_EPTSTA_RX_SETUP ; 
 int AVR32_EPTSTA_TX_PK_RDY ; 
 struct avr32dci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct avr32dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct avr32dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static uint8_t
FUNC9(struct avr32dci_td *td)
{
	struct avr32dci_softc *sc;
	struct usb_page_search buf_res;
	uint16_t count;
	uint8_t to;
	uint32_t temp;

	to = 4;				/* don't loop forever! */

	/* get pointer to softc */
	sc = FUNC3(td->pc);

repeat:

	/* check endpoint status */
	temp = FUNC4(sc, FUNC1(td->ep_no));

	FUNC6(5, "EPTSTA(%u)=0x%08x\n", td->ep_no, temp);

	if (temp & AVR32_EPTSTA_RX_SETUP) {
		/*
	         * The current transfer was aborted
	         * by the USB Host
	         */
		td->error = 1;
		return (0);		/* complete */
	}
	if (temp & AVR32_EPTSTA_TX_PK_RDY) {
		/* cannot write any data - all banks are busy */
		goto not_complete;
	}
	count = td->max_packet_size;
	if (td->remainder < count) {
		/* we have a short packet */
		td->short_pkt = 1;
		count = td->remainder;
	}
	while (count > 0) {

		FUNC8(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > count) {
			buf_res.length = count;
		}
		/* transmit data */
		FUNC7(sc->physdata +
		    (FUNC2(temp) << td->bank_shift) +
		    (td->ep_no << 16) + (td->offset % td->max_packet_size),
		    buf_res.buffer, buf_res.length);
		/* update counters */
		count -= buf_res.length;
		td->offset += buf_res.length;
		td->remainder -= buf_res.length;
	}

	/* allocate FIFO bank */
	FUNC5(sc, FUNC0(td->ep_no), AVR32_EPTCTL_TX_PK_RDY);

	/* check remainder */
	if (td->remainder == 0) {
		if (td->short_pkt) {
			return (0);	/* complete */
		}
		/* else we need to transmit a short packet */
	}
	if (--to) {
		goto repeat;
	}
not_complete:
	return (1);			/* not complete */
}