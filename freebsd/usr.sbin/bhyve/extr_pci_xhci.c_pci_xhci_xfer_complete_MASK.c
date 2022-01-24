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
typedef  scalar_t__ uint64_t ;
typedef  size_t uint32_t ;
struct xhci_trb {size_t dwTrb3; size_t dwTrb2; scalar_t__ qwTrb0; } ;
struct xhci_endp_ctx {int dummy; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct usb_data_xfer {int head; scalar_t__ ndata; TYPE_1__* data; } ;
struct pci_xhci_softc {int dummy; } ;
struct pci_xhci_dev_ep {int dummy; } ;
struct pci_xhci_dev_emu {struct pci_xhci_dev_ep* eps; } ;
struct TYPE_2__ {int ccs; int /*<<< orphan*/  blen; int /*<<< orphan*/  trbnext; int /*<<< orphan*/  streamid; scalar_t__ bdone; int /*<<< orphan*/  processed; scalar_t__ hci_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int USB_MAX_XFER_BLOCKS ; 
 struct xhci_trb* FUNC1 (struct pci_xhci_softc*,scalar_t__) ; 
 struct pci_xhci_dev_emu* FUNC2 (struct pci_xhci_softc*,size_t) ; 
 size_t FUNC3 (int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int XHCI_TRB_3_ED_BIT ; 
 int FUNC5 (size_t) ; 
 int XHCI_TRB_3_IOC_BIT ; 
 int XHCI_TRB_3_ISP_BIT ; 
 int FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int XHCI_TRB_ERROR_SHORT_PKT ; 
 int XHCI_TRB_ERROR_SUCCESS ; 
 int /*<<< orphan*/  XHCI_TRB_EVENT_TRANSFER ; 
 scalar_t__ XHCI_TRB_TYPE_EVENT_DATA ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct xhci_dev_ctx* FUNC10 (struct pci_xhci_softc*,size_t) ; 
 int FUNC11 (struct pci_xhci_softc*,struct xhci_trb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_xhci_softc*,struct pci_xhci_dev_emu*,struct pci_xhci_dev_ep*,struct xhci_endp_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(struct pci_xhci_softc *sc, struct usb_data_xfer *xfer,
     uint32_t slot, uint32_t epid, int *do_intr)
{
	struct pci_xhci_dev_emu *dev;
	struct pci_xhci_dev_ep	*devep;
	struct xhci_dev_ctx	*dev_ctx;
	struct xhci_endp_ctx	*ep_ctx;
	struct xhci_trb		*trb;
	struct xhci_trb		evtrb;
	uint32_t trbflags;
	uint32_t edtla;
	int i, err;

	dev = FUNC2(sc, slot);
	devep = &dev->eps[epid];
	dev_ctx = FUNC10(sc, slot);

	FUNC9(dev_ctx != NULL);

	ep_ctx = &dev_ctx->ctx_ep[epid];

	err = XHCI_TRB_ERROR_SUCCESS;
	*do_intr = 0;
	edtla = 0;

	/* go through list of TRBs and insert event(s) */
	for (i = xfer->head; xfer->ndata > 0; ) {
		evtrb.qwTrb0 = (uint64_t)xfer->data[i].hci_data;
		trb = FUNC1(sc, evtrb.qwTrb0);
		trbflags = trb->dwTrb3;

		FUNC0(("pci_xhci: xfer[%d] done?%u:%d trb %x %016lx %x "
		         "(err %d) IOC?%d\r\n",
		     i, xfer->data[i].processed, xfer->data[i].blen,
		     FUNC7(trbflags), evtrb.qwTrb0,
		     trbflags, err,
		     trb->dwTrb3 & XHCI_TRB_3_IOC_BIT ? 1 : 0));

		if (!xfer->data[i].processed) {
			xfer->head = i;
			break;
		}

		xfer->ndata--;
		edtla += xfer->data[i].bdone;

		trb->dwTrb3 = (trb->dwTrb3 & ~0x1) | (xfer->data[i].ccs);

		FUNC12(sc, dev, devep, ep_ctx,
		    xfer->data[i].streamid, xfer->data[i].trbnext,
		    xfer->data[i].ccs);

		/* Only interrupt if IOC or short packet */
		if (!(trb->dwTrb3 & XHCI_TRB_3_IOC_BIT) &&
		    !((err == XHCI_TRB_ERROR_SHORT_PKT) &&
		      (trb->dwTrb3 & XHCI_TRB_3_ISP_BIT))) {

			i = (i + 1) % USB_MAX_XFER_BLOCKS;
			continue;
		}

		evtrb.dwTrb2 = FUNC3(err) |
		               FUNC4(xfer->data[i].blen);

		evtrb.dwTrb3 = FUNC8(XHCI_TRB_EVENT_TRANSFER) |
		    FUNC6(slot) | FUNC5(epid);

		if (FUNC7(trbflags) == XHCI_TRB_TYPE_EVENT_DATA) {
			FUNC0(("pci_xhci EVENT_DATA edtla %u\r\n", edtla));
			evtrb.qwTrb0 = trb->qwTrb0;
			evtrb.dwTrb2 = (edtla & 0xFFFFF) | 
			         FUNC3(err);
			evtrb.dwTrb3 |= XHCI_TRB_3_ED_BIT;
			edtla = 0;
		}

		*do_intr = 1;

		err = FUNC11(sc, &evtrb, 0);
		if (err != XHCI_TRB_ERROR_SUCCESS) {
			break;
		}

		i = (i + 1) % USB_MAX_XFER_BLOCKS;
	}

	return (err);
}