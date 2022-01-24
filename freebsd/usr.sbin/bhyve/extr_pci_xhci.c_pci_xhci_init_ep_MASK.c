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
struct xhci_endp_ctx {int qwEpCtx2; int /*<<< orphan*/  dwEpCtx0; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct usb_data_xfer {int dummy; } ;
struct pci_xhci_trb_ring {int dummy; } ;
struct pci_xhci_dev_ep {int ep_ringaddr; int /*<<< orphan*/ * ep_xfer; int /*<<< orphan*/  ep_ccs; void* ep_tr; TYPE_1__* ep_sctx; TYPE_2__* ep_sctx_trbs; } ;
struct pci_xhci_dev_emu {int /*<<< orphan*/  xsc; struct pci_xhci_dev_ep* eps; struct xhci_dev_ctx* dev_ctx; } ;
struct TYPE_4__ {int ringaddr; int /*<<< orphan*/  ccs; } ;
struct TYPE_3__ {int qwSctx0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int XHCI_EPCTX_2_TR_DQ_PTR_MASK ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int XHCI_SCTX_0_TR_DQ_PTR_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct pci_xhci_dev_emu *dev, int epid)
{
	struct xhci_dev_ctx    *dev_ctx;
	struct pci_xhci_dev_ep *devep;
	struct xhci_endp_ctx   *ep_ctx;
	uint32_t	pstreams;
	int		i;

	dev_ctx = dev->dev_ctx;
	ep_ctx = &dev_ctx->ctx_ep[epid];
	devep = &dev->eps[epid];
	pstreams = FUNC2(ep_ctx->dwEpCtx0);
	if (pstreams > 0) {
		FUNC0(("init_ep %d with pstreams %d\r\n", epid, pstreams));
		FUNC6(devep->ep_sctx_trbs == NULL);

		devep->ep_sctx = FUNC4(dev->xsc, ep_ctx->qwEpCtx2 &
		                            XHCI_EPCTX_2_TR_DQ_PTR_MASK);
		devep->ep_sctx_trbs = FUNC7(pstreams,
		                      sizeof(struct pci_xhci_trb_ring));
		for (i = 0; i < pstreams; i++) {
			devep->ep_sctx_trbs[i].ringaddr =
			                         devep->ep_sctx[i].qwSctx0 &
			                         XHCI_SCTX_0_TR_DQ_PTR_MASK;
			devep->ep_sctx_trbs[i].ccs =
			     FUNC5(devep->ep_sctx[i].qwSctx0);
		}
	} else {
		FUNC0(("init_ep %d with no pstreams\r\n", epid));
		devep->ep_ringaddr = ep_ctx->qwEpCtx2 &
		                     XHCI_EPCTX_2_TR_DQ_PTR_MASK;
		devep->ep_ccs = FUNC3(ep_ctx->qwEpCtx2);
		devep->ep_tr = FUNC4(dev->xsc, devep->ep_ringaddr);
		FUNC0(("init_ep tr DCS %x\r\n", devep->ep_ccs));
	}

	if (devep->ep_xfer == NULL) {
		devep->ep_xfer = FUNC8(sizeof(struct usb_data_xfer));
		FUNC1(devep->ep_xfer);
	}
}