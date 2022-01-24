#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct grouptask {int dummy; } ;
typedef  size_t qidx_t ;
typedef  TYPE_4__* iflib_txq_t ;
typedef  TYPE_5__* iflib_rxq_t ;
typedef  TYPE_6__* iflib_filter_info_t ;
typedef  TYPE_7__* if_ctx_t ;
struct TYPE_19__ {int ifc_flags; TYPE_2__* ifc_sctx; int /*<<< orphan*/  (* isc_txd_credits_update ) (void*,size_t,int) ;TYPE_4__* ifc_txqs; void* ifc_softc; } ;
struct TYPE_18__ {int (* ifi_filter ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  ifi_filter_arg; int /*<<< orphan*/  ifi_ctx; struct grouptask* ifi_task; } ;
struct TYPE_17__ {int ifr_ntxqirq; size_t* ifr_txqid; int ifr_cq_cidx; int /*<<< orphan*/  ifr_id; TYPE_3__* ifr_fl; TYPE_7__* ifr_ctx; } ;
struct TYPE_16__ {struct grouptask ift_task; TYPE_1__* ift_ifdi; } ;
struct TYPE_15__ {int ifl_cidx; } ;
struct TYPE_14__ {int isc_flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  FUNC1 (struct grouptask*) ; 
 int IFC_LEGACY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,size_t) ; 
 int IFLIB_HAS_RXCQ ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fast_intrs ; 
 scalar_t__ FUNC7 (TYPE_7__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  iflib_started ; 
 int /*<<< orphan*/  rx_intr_enables ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,size_t,int) ; 

__attribute__((used)) static int
FUNC10(void *arg)
{
	iflib_filter_info_t info = arg;
	struct grouptask *gtask = info->ifi_task;
	if_ctx_t ctx;
	iflib_rxq_t rxq = (iflib_rxq_t)info->ifi_ctx;
	iflib_txq_t txq;
	void *sc;
	int i, cidx, result;
	qidx_t txqid;
	bool intr_enable, intr_legacy;

	if (!iflib_started)
		return (FILTER_STRAY);

	FUNC0(fast_intrs);
	if (info->ifi_filter != NULL) {
		result = info->ifi_filter(info->ifi_filter_arg);
		if ((result & FILTER_SCHEDULE_THREAD) == 0)
			return (result);
	}

	ctx = rxq->ifr_ctx;
	sc = ctx->ifc_softc;
	intr_enable = false;
	intr_legacy = !!(ctx->ifc_flags & IFC_LEGACY);
	FUNC5(rxq->ifr_ntxqirq);
	for (i = 0; i < rxq->ifr_ntxqirq; i++) {
		txqid = rxq->ifr_txqid[i];
		txq = &ctx->ifc_txqs[txqid];
		FUNC6(txq->ift_ifdi->idi_tag, txq->ift_ifdi->idi_map,
		    BUS_DMASYNC_POSTREAD);
		if (!ctx->isc_txd_credits_update(sc, txqid, false)) {
			if (intr_legacy)
				intr_enable = true;
			else
				FUNC4(ctx, txqid);
			continue;
		}
		FUNC1(&txq->ift_task);
	}
	if (ctx->ifc_sctx->isc_flags & IFLIB_HAS_RXCQ)
		cidx = rxq->ifr_cq_cidx;
	else
		cidx = rxq->ifr_fl[0].ifl_cidx;
	if (FUNC7(ctx, rxq, cidx, 1))
		FUNC1(gtask);
	else {
		if (intr_legacy)
			intr_enable = true;
		else
			FUNC3(ctx, rxq->ifr_id);
		FUNC0(rx_intr_enables);
	}
	if (intr_enable)
		FUNC2(ctx);
	return (FILTER_HANDLED);
}