#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct taskqgroup {int dummy; } ;
typedef  TYPE_1__* iflib_txq_t ;
typedef  TYPE_2__* iflib_rxq_t ;
typedef  TYPE_3__* iflib_fl_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  TYPE_4__* if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_28__ {int /*<<< orphan*/ * gt_uniq; } ;
struct TYPE_27__ {int ifc_flags; struct TYPE_27__* ifc_softc; int /*<<< orphan*/  ifc_dev; TYPE_6__ ifc_vflr_task; TYPE_6__ ifc_admin_task; TYPE_2__* ifc_rxqs; TYPE_1__* ifc_txqs; int /*<<< orphan*/ * ifc_led_dev; int /*<<< orphan*/  ifc_ifp; } ;
struct TYPE_26__ {TYPE_4__* ifl_rx_bitmap; } ;
struct TYPE_25__ {int ifr_nfl; TYPE_3__* ifr_fl; TYPE_6__ ifr_task; } ;
struct TYPE_24__ {TYPE_6__ ift_task; int /*<<< orphan*/  ift_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int EBUSY ; 
 int IFC_IN_DETACH ; 
 int IFC_SC_ALLOCATED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 struct taskqgroup* qgroup_if_config_tqg ; 
 struct taskqgroup* qgroup_if_io_tqg ; 
 int /*<<< orphan*/  FUNC25 (struct taskqgroup*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 

int
FUNC27(if_ctx_t ctx)
{
	if_t ifp = ctx->ifc_ifp;
	iflib_txq_t txq;
	iflib_rxq_t rxq;
	device_t dev = ctx->ifc_dev;
	int i, j;
	struct taskqgroup *tqg;
	iflib_fl_t fl;

	/* Make sure VLANS are not using driver */
	if (FUNC14(ifp)) {
		FUNC10(dev, "Vlan in use, detach first\n");
		return (EBUSY);
	}
#ifdef PCI_IOV
	if (!CTX_IS_VF(ctx) && pci_iov_detach(dev) != 0) {
		device_printf(dev, "SR-IOV in use; detach first.\n");
		return (EBUSY);
	}
#endif

	FUNC6(ctx);
	ctx->ifc_flags |= IFC_IN_DETACH;
	FUNC7(ctx);

	/* Unregister VLAN handlers before calling iflib_stop() */
	FUNC22(ctx);

	FUNC17(ifp);
	FUNC12(ifp);

	FUNC1(ctx);
	FUNC20(ctx);
	FUNC2(ctx);

	FUNC18(ctx);
	if (ctx->ifc_led_dev != NULL)
		FUNC23(ctx->ifc_led_dev);
	/* XXX drain any dependent tasks */
	tqg = qgroup_if_io_tqg;
	for (txq = ctx->ifc_txqs, i = 0; i < FUNC5(ctx); i++, txq++) {
		FUNC9(&txq->ift_timer);
		if (txq->ift_task.gt_uniq != NULL)
			FUNC25(tqg, &txq->ift_task);
	}
	for (i = 0, rxq = ctx->ifc_rxqs; i < FUNC4(ctx); i++, rxq++) {
		if (rxq->ifr_task.gt_uniq != NULL)
			FUNC25(tqg, &rxq->ifr_task);

		for (j = 0, fl = rxq->ifr_fl; j < rxq->ifr_nfl; j++, fl++)
			FUNC13(fl->ifl_rx_bitmap, M_IFLIB);
	}
	tqg = qgroup_if_config_tqg;
	if (ctx->ifc_admin_task.gt_uniq != NULL)
		FUNC25(tqg, &ctx->ifc_admin_task);
	if (ctx->ifc_vflr_task.gt_uniq != NULL)
		FUNC25(tqg, &ctx->ifc_vflr_task);
	FUNC1(ctx);
	FUNC3(ctx);
	FUNC2(ctx);

	/* ether_ifdetach calls if_qflush - lock must be destroy afterwards*/
	FUNC16(ctx);

	FUNC8(dev);

	FUNC21(ctx);
	FUNC19(ctx);

	FUNC15(ctx);

	FUNC11(ctx->ifc_dev, NULL);
	if (ctx->ifc_flags & IFC_SC_ALLOCATED)
		FUNC13(ctx->ifc_softc, M_IFLIB);
	FUNC26(ctx);
	FUNC13(ctx, M_IFLIB);
	return (0);
}