#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct xhci_trb {int dwTrb3; int qwTrb0; int /*<<< orphan*/  dwTrb2; } ;
struct TYPE_2__ {int crcr; struct xhci_trb* cr_p; } ;
struct pci_xhci_softc {TYPE_1__ opregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int XHCI_CRCR_LO_CA ; 
 int XHCI_CRCR_LO_CRR ; 
 int XHCI_CRCR_LO_RCS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int XHCI_TRB_3_CYCLE_BIT ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int XHCI_TRB_3_TC_BIT ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int XHCI_TRB_ERROR_SUCCESS ; 
 int /*<<< orphan*/  XHCI_TRB_EVENT_CMD_COMPLETE ; 
#define  XHCI_TRB_TYPE_ADDRESS_DEVICE 143 
#define  XHCI_TRB_TYPE_CONFIGURE_EP 142 
#define  XHCI_TRB_TYPE_DISABLE_SLOT 141 
#define  XHCI_TRB_TYPE_ENABLE_SLOT 140 
#define  XHCI_TRB_TYPE_EVALUATE_CTX 139 
#define  XHCI_TRB_TYPE_FORCE_EVENT 138 
#define  XHCI_TRB_TYPE_FORCE_HEADER 137 
#define  XHCI_TRB_TYPE_GET_PORT_BW 136 
#define  XHCI_TRB_TYPE_LINK 135 
#define  XHCI_TRB_TYPE_NEGOTIATE_BW 134 
#define  XHCI_TRB_TYPE_NOOP_CMD 133 
#define  XHCI_TRB_TYPE_RESET_DEVICE 132 
#define  XHCI_TRB_TYPE_RESET_EP 131 
#define  XHCI_TRB_TYPE_SET_LATENCY_TOL 130 
#define  XHCI_TRB_TYPE_SET_TR_DEQUEUE 129 
#define  XHCI_TRB_TYPE_STOP_EP 128 
 int FUNC6 (struct pci_xhci_softc*,int,struct xhci_trb*) ; 
 int FUNC7 (struct pci_xhci_softc*,int,struct xhci_trb*) ; 
 int FUNC8 (struct pci_xhci_softc*,int) ; 
 int FUNC9 (struct pci_xhci_softc*,int*) ; 
 int FUNC10 (struct pci_xhci_softc*,int,struct xhci_trb*) ; 
 int FUNC11 (struct pci_xhci_softc*,int) ; 
 int FUNC12 (struct pci_xhci_softc*,int,struct xhci_trb*) ; 
 int FUNC13 (struct pci_xhci_softc*,int,struct xhci_trb*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_xhci_softc*,struct xhci_trb*,int) ; 
 struct xhci_trb* FUNC15 (struct pci_xhci_softc*,struct xhci_trb*,int*) ; 

__attribute__((used)) static int
FUNC16(struct pci_xhci_softc *sc)
{
	struct xhci_trb	evtrb;
	struct xhci_trb	*trb;
	uint64_t	crcr;
	uint32_t	ccs;		/* cycle state (XHCI 4.9.2) */
	uint32_t	type;
	uint32_t	slot;
	uint32_t	cmderr;
	int		error;

	error = 0;
	sc->opregs.crcr |= XHCI_CRCR_LO_CRR;

	trb = sc->opregs.cr_p;
	ccs = sc->opregs.crcr & XHCI_CRCR_LO_RCS;
	crcr = sc->opregs.crcr & ~0xF;

	while (1) {
		sc->opregs.cr_p = trb;
	
		type = FUNC4(trb->dwTrb3);

		if ((trb->dwTrb3 & XHCI_TRB_3_CYCLE_BIT) !=
		    (ccs & XHCI_TRB_3_CYCLE_BIT))
			break;

		FUNC0(("pci_xhci: cmd type 0x%x, Trb0 x%016lx dwTrb2 x%08x"
		        " dwTrb3 x%08x, TRB_CYCLE %u/ccs %u\r\n",
		        type, trb->qwTrb0, trb->dwTrb2, trb->dwTrb3,
		        trb->dwTrb3 & XHCI_TRB_3_CYCLE_BIT, ccs));

		cmderr = XHCI_TRB_ERROR_SUCCESS;
		evtrb.dwTrb2 = 0;
		evtrb.dwTrb3 = (ccs & XHCI_TRB_3_CYCLE_BIT) |
		      FUNC5(XHCI_TRB_EVENT_CMD_COMPLETE);
		slot = 0;

		switch (type) {
		case XHCI_TRB_TYPE_LINK:			/* 0x06 */
			if (trb->dwTrb3 & XHCI_TRB_3_TC_BIT)
				ccs ^= XHCI_CRCR_LO_RCS;
			break;

		case XHCI_TRB_TYPE_ENABLE_SLOT:			/* 0x09 */
			cmderr = FUNC9(sc, &slot);
			break;

		case XHCI_TRB_TYPE_DISABLE_SLOT:		/* 0x0A */
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC8(sc, slot);
			break;

		case XHCI_TRB_TYPE_ADDRESS_DEVICE:		/* 0x0B */
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC6(sc, slot, trb);
			break;

		case XHCI_TRB_TYPE_CONFIGURE_EP:		/* 0x0C */
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC7(sc, slot, trb);
			break;

		case XHCI_TRB_TYPE_EVALUATE_CTX:		/* 0x0D */
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC10(sc, slot, trb);
			break;

		case XHCI_TRB_TYPE_RESET_EP:			/* 0x0E */
			FUNC0(("Reset Endpoint on slot %d\r\n", slot));
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC12(sc, slot, trb);
			break;

		case XHCI_TRB_TYPE_STOP_EP:			/* 0x0F */
			FUNC0(("Stop Endpoint on slot %d\r\n", slot));
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC12(sc, slot, trb);
			break;

		case XHCI_TRB_TYPE_SET_TR_DEQUEUE:		/* 0x10 */
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC13(sc, slot, trb);
			break;

		case XHCI_TRB_TYPE_RESET_DEVICE:		/* 0x11 */
			slot = FUNC2(trb->dwTrb3);
			cmderr = FUNC11(sc, slot);
			break;

		case XHCI_TRB_TYPE_FORCE_EVENT:			/* 0x12 */
			/* TODO: */
			break;

		case XHCI_TRB_TYPE_NEGOTIATE_BW:		/* 0x13 */
			break;

		case XHCI_TRB_TYPE_SET_LATENCY_TOL:		/* 0x14 */
			break;

		case XHCI_TRB_TYPE_GET_PORT_BW:			/* 0x15 */
			break;

		case XHCI_TRB_TYPE_FORCE_HEADER:		/* 0x16 */
			break;

		case XHCI_TRB_TYPE_NOOP_CMD:			/* 0x17 */
			break;

		default:
			FUNC0(("pci_xhci: unsupported cmd %x\r\n", type));
			break;
		}

		if (type != XHCI_TRB_TYPE_LINK) {
			/* 
			 * insert command completion event and assert intr
			 */
			evtrb.qwTrb0 = crcr;
			evtrb.dwTrb2 |= FUNC1(cmderr);
			evtrb.dwTrb3 |= FUNC3(slot);
			FUNC0(("pci_xhci: command 0x%x result: 0x%x\r\n",
			        type, cmderr));
			FUNC14(sc, &evtrb, 1);
		}

		trb = FUNC15(sc, trb, &crcr);
	}

	sc->opregs.crcr = crcr | (sc->opregs.crcr & XHCI_CRCR_LO_CA) | ccs;
	sc->opregs.crcr &= ~XHCI_CRCR_LO_CRR;
	return (error);
}