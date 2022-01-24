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
struct dwc_otg_td {size_t ep_no; scalar_t__ remainder; int error_any; scalar_t__ max_packet_size; int short_pkt; int /*<<< orphan*/  offset; int /*<<< orphan*/  pc; } ;
struct dwc_otg_softc {int sc_last_rx_status; int* sc_out_ctl; } ;

/* Variables and functions */
 int DIEPCTL_EPTYPE_ISOC ; 
 int DIEPCTL_EPTYPE_MASK ; 
 int DIEPCTL_EPTYPE_SHIFT ; 
 int DIEPCTL_SETD0PID ; 
 int DIEPCTL_SETD1PID ; 
 int DOEPCTL_CNAK ; 
 int DOEPCTL_EPENA ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 size_t FUNC8 (int) ; 
 int GRXSTSRD_OUT_DATA ; 
 int GRXSTSRD_PKTSTS_MASK ; 
 int GRXSTSRD_STP_COMPLETE ; 
 int GRXSTSRD_STP_DATA ; 
 int /*<<< orphan*/  FUNC9 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc_otg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint8_t
FUNC11(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
	uint32_t temp;
	uint16_t count;
	uint8_t got_short;

	got_short = 0;

	/* check endpoint status */
	if (sc->sc_last_rx_status == 0)
		goto not_complete;

	if (FUNC8(sc->sc_last_rx_status) != td->ep_no)
		goto not_complete;

	/* check for SETUP packet */
	if ((sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) ==
	    GRXSTSRD_STP_DATA ||
	    (sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) ==
	    GRXSTSRD_STP_COMPLETE) {
		if (td->remainder == 0) {
			/*
			 * We are actually complete and have
			 * received the next SETUP
			 */
			FUNC2(5, "faking complete\n");
			return (0);	/* complete */
		}
		/*
		 * USB Host Aborted the transfer.
		 */
		td->error_any = 1;
		return (0);		/* complete */
	}

	if ((sc->sc_last_rx_status & GRXSTSRD_PKTSTS_MASK) !=
	    GRXSTSRD_OUT_DATA) {
		/* release FIFO */
		FUNC9(sc);
		goto not_complete;
	}

	/* get the packet byte count */
	count = FUNC7(sc->sc_last_rx_status);

	/* verify the packet byte count */
	if (count != td->max_packet_size) {
		if (count < td->max_packet_size) {
			/* we have a short packet */
			td->short_pkt = 1;
			got_short = 1;
		} else {
			/* invalid USB packet */
			td->error_any = 1;

			/* release FIFO */
			FUNC9(sc);
			return (0);	/* we are complete */
		}
	}
	/* verify the packet byte count */
	if (count > td->remainder) {
		/* invalid USB packet */
		td->error_any = 1;

		/* release FIFO */
		FUNC9(sc);
		return (0);		/* we are complete */
	}

	/* read data from FIFO */
	FUNC10(sc, td->pc, td->offset, count);

	td->remainder -= count;
	td->offset += count;

	/* release FIFO */
	FUNC9(sc);

	temp = sc->sc_out_ctl[td->ep_no];

	/* check for isochronous mode */
	if ((temp & DIEPCTL_EPTYPE_MASK) ==
	    (DIEPCTL_EPTYPE_ISOC << DIEPCTL_EPTYPE_SHIFT)) {
		/* toggle odd or even frame bit */
		if (temp & DIEPCTL_SETD1PID) {
			temp &= ~DIEPCTL_SETD1PID;
			temp |= DIEPCTL_SETD0PID;
		} else {
			temp &= ~DIEPCTL_SETD0PID;
			temp |= DIEPCTL_SETD1PID;
		}
		sc->sc_out_ctl[td->ep_no] = temp;
	}

	/* check if we are complete */
	if ((td->remainder == 0) || got_short) {
		if (td->short_pkt) {
			/* we are complete */
			return (0);
		}
		/* else need to receive a zero length packet */
	}

not_complete:

	/* enable SETUP and transfer complete interrupt */
	if (td->ep_no == 0) {
		FUNC3(sc, FUNC1(0),
		    FUNC4(3) |
		    FUNC6(1) | 
		    FUNC5(td->max_packet_size));
	} else {
		/* allow reception of multiple packets */
		FUNC3(sc, FUNC1(td->ep_no),
		    FUNC4(1) |
		    FUNC6(4) | 
		    FUNC5(4 *
		        ((td->max_packet_size + 3) & ~3)));
	}
	temp = sc->sc_out_ctl[td->ep_no];
	FUNC3(sc, FUNC0(td->ep_no), temp |
	    DOEPCTL_EPENA | DOEPCTL_CNAK);

	return (1);			/* not complete */
}