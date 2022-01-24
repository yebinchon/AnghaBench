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
typedef  int /*<<< orphan*/  uint32_t ;
struct xhci_endp_ctx {void* dwEpCtx0; } ;
struct TYPE_4__ {void* dwSctx0; void* dwSctx3; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; TYPE_2__ ctx_slot; } ;
struct pci_xhci_softc {int /*<<< orphan*/ * portregs; } ;
struct TYPE_3__ {scalar_t__ hci_address; } ;
struct pci_xhci_dev_emu {scalar_t__ dev_slotstate; TYPE_1__ hci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*,int,int,int) ; 
 struct pci_xhci_dev_emu* FUNC2 (struct pci_xhci_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ XHCI_ST_DEFAULT ; 
 scalar_t__ XHCI_ST_DISABLED ; 
 int XHCI_ST_EPCTX_DISABLED ; 
 int XHCI_ST_SLCTX_DEFAULT ; 
 int /*<<< orphan*/  XHCI_TRB_ERROR_NO_SLOTS ; 
 int /*<<< orphan*/  XHCI_TRB_ERROR_SLOT_NOT_ON ; 
 int /*<<< orphan*/  XHCI_TRB_ERROR_SUCCESS ; 
 struct xhci_dev_ctx* FUNC3 (struct pci_xhci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_xhci_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC5(struct pci_xhci_softc *sc, uint32_t slot)
{
	struct pci_xhci_dev_emu *dev;
	struct xhci_dev_ctx     *dev_ctx;
	struct xhci_endp_ctx    *ep_ctx;
	uint32_t	cmderr;
	int		i;

	cmderr = XHCI_TRB_ERROR_NO_SLOTS;
	if (sc->portregs == NULL)
		goto done;

	FUNC0(("pci_xhci reset device slot %u\r\n", slot));

	dev = FUNC2(sc, slot);
	if (!dev || dev->dev_slotstate == XHCI_ST_DISABLED)
		cmderr = XHCI_TRB_ERROR_SLOT_NOT_ON;
	else {
		dev->dev_slotstate = XHCI_ST_DEFAULT;

		dev->hci.hci_address = 0;
		dev_ctx = FUNC3(sc, slot);

		/* slot state */
		dev_ctx->ctx_slot.dwSctx3 = FUNC1(
		    dev_ctx->ctx_slot.dwSctx3, XHCI_ST_SLCTX_DEFAULT,
		    0x1F, 27);

		/* number of contexts */
		dev_ctx->ctx_slot.dwSctx0 = FUNC1(
		    dev_ctx->ctx_slot.dwSctx0, 1, 0x1F, 27);

		/* reset all eps other than ep-0 */
		for (i = 2; i <= 31; i++) {
			ep_ctx = &dev_ctx->ctx_ep[i];
			ep_ctx->dwEpCtx0 = FUNC1( ep_ctx->dwEpCtx0,
			    XHCI_ST_EPCTX_DISABLED, 0x7, 0);
		}

		cmderr = XHCI_TRB_ERROR_SUCCESS;
	}

	FUNC4(sc, slot);

done:
	return (cmderr);
}