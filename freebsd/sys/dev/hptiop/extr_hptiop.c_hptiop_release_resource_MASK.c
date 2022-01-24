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
typedef  union ccb {int dummy; } ccb ;
struct hpt_iop_srb {int /*<<< orphan*/  timeout; scalar_t__ dma_map; } ;
struct hpt_iop_hba {int /*<<< orphan*/  lock; scalar_t__ bar2_res; int /*<<< orphan*/  bar2_rid; int /*<<< orphan*/  pcidev; scalar_t__ bar0_res; int /*<<< orphan*/  bar0_rid; scalar_t__ irq_res; scalar_t__ parent_dmat; scalar_t__ io_dmat; scalar_t__ srb_dmat; scalar_t__ srb_dmamap; struct hpt_iop_srb** srb; scalar_t__ ctlcfg_dmat; scalar_t__ ctlcfg_dmamap; int /*<<< orphan*/  ctlcfg_ptr; scalar_t__ sim; scalar_t__ irq_handle; scalar_t__ path; scalar_t__ ioctl_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {scalar_t__ callback_arg; int /*<<< orphan*/  callback; scalar_t__ event_enable; TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int HPT_SRB_MAX_QUEUE_SIZE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  hptiop_async ; 
 int /*<<< orphan*/  FUNC10 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC11 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (union ccb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC17(struct hpt_iop_hba *hba)
{
	int i;

	if (hba->ioctl_dev)
		FUNC9(hba->ioctl_dev);

	if (hba->path) {
		struct ccb_setasync ccb;

		FUNC16(&ccb.ccb_h, hba->path, /*priority*/5);
		ccb.ccb_h.func_code = XPT_SASYNC_CB;
		ccb.event_enable = 0;
		ccb.callback = hptiop_async;
		ccb.callback_arg = hba->sim;
		FUNC13((union ccb *)&ccb);
		FUNC15(hba->path);
	}

	if (hba->irq_handle)
		FUNC5(hba->pcidev, hba->irq_res, hba->irq_handle);

	if (hba->sim) {
		FUNC10(hba);
		FUNC14(FUNC8(hba->sim));
		FUNC7(hba->sim, TRUE);
		FUNC11(hba);
	}

	if (hba->ctlcfg_dmat) {
		FUNC2(hba->ctlcfg_dmat, hba->ctlcfg_dmamap);
		FUNC3(hba->ctlcfg_dmat,
					hba->ctlcfg_ptr, hba->ctlcfg_dmamap);
		FUNC0(hba->ctlcfg_dmat);
	}

	for (i = 0; i < HPT_SRB_MAX_QUEUE_SIZE; i++) {
		struct hpt_iop_srb *srb = hba->srb[i];
		if (srb->dma_map)
			FUNC1(hba->io_dmat, srb->dma_map);
		FUNC6(&srb->timeout);
	}

	if (hba->srb_dmat) {
		FUNC2(hba->srb_dmat, hba->srb_dmamap);
		FUNC1(hba->srb_dmat, hba->srb_dmamap);
		FUNC0(hba->srb_dmat);
	}

	if (hba->io_dmat)
		FUNC0(hba->io_dmat);

	if (hba->parent_dmat)
		FUNC0(hba->parent_dmat);

	if (hba->irq_res)
		FUNC4(hba->pcidev, SYS_RES_IRQ,
					0, hba->irq_res);

	if (hba->bar0_res)
		FUNC4(hba->pcidev, SYS_RES_MEMORY,
					hba->bar0_rid, hba->bar0_res);
	if (hba->bar2_res)
		FUNC4(hba->pcidev, SYS_RES_MEMORY,
					hba->bar2_rid, hba->bar2_res);
	FUNC12(&hba->lock);
}