#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_1__* iflib_txq_t ;
typedef  TYPE_2__* if_softc_ctx_t ;
typedef  TYPE_3__* if_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  c_cpu; } ;
struct TYPE_14__ {scalar_t__ isc_pause_frames; } ;
struct TYPE_15__ {int ifc_flags; int /*<<< orphan*/  ifc_ifp; int /*<<< orphan*/  ifc_dev; TYPE_2__ ifc_softc_ctx; } ;
struct TYPE_13__ {int ift_last_timer_tick; scalar_t__ ift_qstatus; scalar_t__ ift_cleaned_prev; scalar_t__ ift_cleaned; int /*<<< orphan*/  ift_pidx; int /*<<< orphan*/  ift_id; TYPE_7__ ift_timer; int /*<<< orphan*/  ift_task; scalar_t__ ift_db_pending; int /*<<< orphan*/  ift_br; TYPE_3__* ift_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IFCAP_NETMAP ; 
 int IFC_DO_RESET ; 
 int IFC_DO_WATCHDOG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ IFLIB_QUEUE_HUNG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int,void (*) (void*),TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_1__*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int ticks ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	iflib_txq_t txq = arg;
	if_ctx_t ctx = txq->ift_ctx;
	if_softc_ctx_t sctx = &ctx->ifc_softc_ctx;
	uint64_t this_tick = ticks;
	uint32_t reset_on = hz / 2;

	if (!(FUNC8(ctx->ifc_ifp) & IFF_DRV_RUNNING))
		return;

	/*
	** Check on the state of the TX queue(s), this
	** can be done without the lock because its RO
	** and the HUNG state will be static if set.
	*/
	if (this_tick - txq->ift_last_timer_tick >= hz / 2) {
		txq->ift_last_timer_tick = this_tick;
		FUNC1(ctx, txq->ift_id);
		if ((txq->ift_qstatus == IFLIB_QUEUE_HUNG) &&
		    ((txq->ift_cleaned_prev == txq->ift_cleaned) ||
		     (sctx->isc_pause_frames == 0)))
			goto hung;

		if (FUNC12(txq->ift_br))
			txq->ift_qstatus = IFLIB_QUEUE_HUNG;
		txq->ift_cleaned_prev = txq->ift_cleaned;
	}
#ifdef DEV_NETMAP
	if (if_getcapenable(ctx->ifc_ifp) & IFCAP_NETMAP)
		iflib_netmap_timer_adjust(ctx, txq, &reset_on);
#endif
	/* handle any laggards */
	if (txq->ift_db_pending)
		FUNC0(&txq->ift_task);

	sctx->isc_pause_frames = 0;
	if (FUNC8(ctx->ifc_ifp) & IFF_DRV_RUNNING) 
		FUNC5(&txq->ift_timer, reset_on, iflib_timer, txq, txq->ift_timer.c_cpu);
	return;

 hung:
	FUNC6(ctx->ifc_dev,
	    "Watchdog timeout (TX: %d desc avail: %d pidx: %d) -- resetting\n",
	    txq->ift_id, FUNC4(txq), txq->ift_pidx);
	FUNC2(ctx);
	FUNC9(ctx->ifc_ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);
	ctx->ifc_flags |= (IFC_DO_WATCHDOG|IFC_DO_RESET);
	FUNC10(ctx);
	FUNC3(ctx);
}