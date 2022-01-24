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
struct xhci_endp_ctx {int dwEpCtx0; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct pci_xhci_dev_ep {int /*<<< orphan*/ * ep_xfer; int /*<<< orphan*/ * ep_sctx_trbs; } ;
struct pci_xhci_dev_emu {struct pci_xhci_dev_ep* eps; struct xhci_dev_ctx* dev_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int XHCI_ST_EPCTX_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_xhci_dev_ep*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct pci_xhci_dev_emu *dev, int epid)
{
	struct xhci_dev_ctx    *dev_ctx;
	struct pci_xhci_dev_ep *devep;
	struct xhci_endp_ctx   *ep_ctx;

	FUNC0(("pci_xhci disable_ep %d\r\n", epid));

	dev_ctx = dev->dev_ctx;
	ep_ctx = &dev_ctx->ctx_ep[epid];
	ep_ctx->dwEpCtx0 = (ep_ctx->dwEpCtx0 & ~0x7) | XHCI_ST_EPCTX_DISABLED;

	devep = &dev->eps[epid];
	if (FUNC1(ep_ctx->dwEpCtx0) > 0 &&
	    devep->ep_sctx_trbs != NULL)
			FUNC2(devep->ep_sctx_trbs);

	if (devep->ep_xfer != NULL) {
		FUNC2(devep->ep_xfer);
		devep->ep_xfer = NULL;
	}

	FUNC3(devep, 0, sizeof(struct pci_xhci_dev_ep));
}