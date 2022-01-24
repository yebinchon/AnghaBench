#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  void* uint32_t ;
struct xhci_trb {int dummy; } ;
struct TYPE_3__ {int iman; int imod; int erstsz; int erstba; int erdp; } ;
struct pci_xhci_rtsregs {void* er_enq_idx; void* er_events_cnt; TYPE_2__* erstba_p; TYPE_1__ intrreg; int /*<<< orphan*/  er_deq_seg; void* erst_p; } ;
struct pci_xhci_softc {struct pci_xhci_rtsregs rtsregs; scalar_t__ rtsoff; } ;
struct TYPE_4__ {int qwEvrsTablePtr; void* dwEvrsTableSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int XHCI_ERDP_LO_BUSY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (struct pci_xhci_softc*,int) ; 
 int XHCI_IMAN_INTR_ENA ; 
 int XHCI_IMAN_INTR_PEND ; 
 int /*<<< orphan*/  FUNC5 (struct pci_xhci_softc*) ; 

__attribute__((used)) static void
FUNC6(struct pci_xhci_softc *sc, uint64_t offset,
    uint64_t value)
{
	struct pci_xhci_rtsregs *rts;

	offset -= sc->rtsoff;

	if (offset == 0) {
		FUNC0(("pci_xhci attempted write to MFINDEX\r\n"));
		return;
	}

	FUNC0(("pci_xhci: runtime regs write offset 0x%lx: 0x%lx\r\n",
	        offset, value));

	offset -= 0x20;		/* start of intrreg */

	rts = &sc->rtsregs;

	switch (offset) {
	case 0x00:
		if (value & XHCI_IMAN_INTR_PEND)
			rts->intrreg.iman &= ~XHCI_IMAN_INTR_PEND;
		rts->intrreg.iman = (value & XHCI_IMAN_INTR_ENA) |
		                    (rts->intrreg.iman & XHCI_IMAN_INTR_PEND);

		if (!(value & XHCI_IMAN_INTR_ENA))
			FUNC5(sc);

		break;

	case 0x04:
		rts->intrreg.imod = value;
		break;

	case 0x08:
		rts->intrreg.erstsz = value & 0xFFFF;
		break;

	case 0x10:
		/* ERSTBA low bits */
		rts->intrreg.erstba = FUNC1(sc->rtsregs.intrreg.erstba) |
		                      (value & ~0x3F);
		break;

	case 0x14:
		/* ERSTBA high bits */
		rts->intrreg.erstba = (value << 32) |
		    FUNC2(sc->rtsregs.intrreg.erstba);

		rts->erstba_p = FUNC4(sc,
		                        sc->rtsregs.intrreg.erstba & ~0x3FUL);

		rts->erst_p = FUNC4(sc,
		              sc->rtsregs.erstba_p->qwEvrsTablePtr & ~0x3FUL);

		rts->er_enq_idx = 0;
		rts->er_events_cnt = 0;

		FUNC0(("pci_xhci: wr erstba erst (%p) ptr 0x%lx, sz %u\r\n",
		        rts->erstba_p,
		        rts->erstba_p->qwEvrsTablePtr,
		        rts->erstba_p->dwEvrsTableSize));
		break;

	case 0x18:
		/* ERDP low bits */
		rts->intrreg.erdp =
		    FUNC1(sc->rtsregs.intrreg.erdp) |
		    (rts->intrreg.erdp & XHCI_ERDP_LO_BUSY) |
		    (value & ~0xF);
		if (value & XHCI_ERDP_LO_BUSY) {
			rts->intrreg.erdp &= ~XHCI_ERDP_LO_BUSY;
			rts->intrreg.iman &= ~XHCI_IMAN_INTR_PEND;
		}

		rts->er_deq_seg = FUNC3(value);

		break;

	case 0x1C:
		/* ERDP high bits */
		rts->intrreg.erdp = (value << 32) |
		    FUNC2(sc->rtsregs.intrreg.erdp);

		if (rts->er_events_cnt > 0) {
			uint64_t erdp;
			uint32_t erdp_i;

			erdp = rts->intrreg.erdp & ~0xF;
			erdp_i = (erdp - rts->erstba_p->qwEvrsTablePtr) /
			           sizeof(struct xhci_trb);

			if (erdp_i <= rts->er_enq_idx)
				rts->er_events_cnt = rts->er_enq_idx - erdp_i;
			else
				rts->er_events_cnt =
				          rts->erstba_p->dwEvrsTableSize -
				          (erdp_i - rts->er_enq_idx);

			FUNC0(("pci_xhci: erdp 0x%lx, events cnt %u\r\n",
			        erdp, rts->er_events_cnt));
		}

		break;

	default:
		FUNC0(("pci_xhci attempted write to RTS offset 0x%lx\r\n",
		        offset));
		break;
	}
}