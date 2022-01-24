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
typedef  int uint32_t ;
struct xhci_trb {int qwTrb0; int dwTrb2; int dwTrb3; } ;
struct xhci_stream_ctx {int dummy; } ;
struct xhci_endp_ctx {int dwEpCtx0; int qwEpCtx2; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct pci_xhci_softc {int dummy; } ;
struct pci_xhci_dev_ep {int ep_ringaddr; int ep_ccs; int /*<<< orphan*/  ep_tr; TYPE_2__* ep_sctx_trbs; TYPE_1__* ep_sctx; } ;
struct pci_xhci_dev_emu {struct pci_xhci_dev_ep* eps; struct xhci_dev_ctx* dev_ctx; } ;
struct TYPE_4__ {int ringaddr; int /*<<< orphan*/  ccs; } ;
struct TYPE_3__ {int qwSctx0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_xhci_softc*,int) ; 
 struct pci_xhci_dev_emu* FUNC5 (struct pci_xhci_softc*,int) ; 
#define  XHCI_ST_EPCTX_ERROR 129 
#define  XHCI_ST_EPCTX_STOPPED 128 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int XHCI_TRB_ERROR_CONTEXT_STATE ; 
 int XHCI_TRB_ERROR_SUCCESS ; 
 int XHCI_TRB_ERROR_TRB ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_xhci_softc*,struct xhci_endp_ctx*,int,struct xhci_stream_ctx**) ; 

__attribute__((used)) static uint32_t
FUNC12(struct pci_xhci_softc *sc, uint32_t slot,
    struct xhci_trb *trb)
{
	struct pci_xhci_dev_emu	*dev;
	struct pci_xhci_dev_ep	*devep;
	struct xhci_dev_ctx	*dev_ctx;
	struct xhci_endp_ctx	*ep_ctx;
	uint32_t	cmderr, epid;
	uint32_t	streamid;

	cmderr = XHCI_TRB_ERROR_SUCCESS;

	dev = FUNC5(sc, slot);
	FUNC9(dev != NULL);

	FUNC0(("pci_xhci set_tr: new-tr x%016lx, SCT %u DCS %u\r\n"
	         "                 stream-id %u, slot %u, epid %u, C %u\r\n",
	         (trb->qwTrb0 & ~0xF),  (uint32_t)((trb->qwTrb0 >> 1) & 0x7),
	         (uint32_t)(trb->qwTrb0 & 0x1), (trb->dwTrb2 >> 16) & 0xFFFF,
	         FUNC8(trb->dwTrb3),
	         FUNC7(trb->dwTrb3), trb->dwTrb3 & 0x1));

	epid = FUNC7(trb->dwTrb3);
	if (epid < 1 || epid > 31) {
		FUNC0(("pci_xhci: set_tr_deq: invalid epid %u\r\n", epid));
		cmderr = XHCI_TRB_ERROR_TRB;
		goto done;
	}

	dev_ctx = dev->dev_ctx;
	FUNC9(dev_ctx != NULL);

	ep_ctx = &dev_ctx->ctx_ep[epid];
	devep = &dev->eps[epid];

	switch (FUNC1(ep_ctx->dwEpCtx0)) {
	case XHCI_ST_EPCTX_STOPPED:
	case XHCI_ST_EPCTX_ERROR:
		break;
	default:
		FUNC0(("pci_xhci cmd set_tr invalid state %x\r\n",
		        FUNC1(ep_ctx->dwEpCtx0)));
		cmderr = XHCI_TRB_ERROR_CONTEXT_STATE;
		goto done;
	}

	streamid = FUNC6(trb->dwTrb2);
	if (FUNC2(ep_ctx->dwEpCtx0) > 0) {
		struct xhci_stream_ctx *sctx;

		sctx = NULL;
		cmderr = FUNC11(sc, ep_ctx, streamid, &sctx);
		if (sctx != NULL) {
			FUNC9(devep->ep_sctx != NULL);
			
			devep->ep_sctx[streamid].qwSctx0 = trb->qwTrb0;
			devep->ep_sctx_trbs[streamid].ringaddr =
			    trb->qwTrb0 & ~0xF;
			devep->ep_sctx_trbs[streamid].ccs =
			    FUNC3(trb->qwTrb0);
		}
	} else {
		if (streamid != 0) {
			FUNC0(("pci_xhci cmd set_tr streamid %x != 0\r\n",
			        streamid));
		}
		ep_ctx->qwEpCtx2 = trb->qwTrb0 & ~0xFUL;
		devep->ep_ringaddr = ep_ctx->qwEpCtx2 & ~0xFUL;
		devep->ep_ccs = trb->qwTrb0 & 0x1;
		devep->ep_tr = FUNC4(sc, devep->ep_ringaddr);

		FUNC0(("pci_xhci set_tr first TRB:\r\n"));
		FUNC10(devep->ep_tr);
	}
	ep_ctx->dwEpCtx0 = (ep_ctx->dwEpCtx0 & ~0x7) | XHCI_ST_EPCTX_STOPPED;

done:
	return (cmderr);
}