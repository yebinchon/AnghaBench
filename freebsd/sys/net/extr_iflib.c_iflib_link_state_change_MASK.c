#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_2__* iflib_txq_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  TYPE_3__* if_ctx_t ;
struct TYPE_7__ {int isc_ntxqsets; } ;
struct TYPE_9__ {int ifc_link_state; TYPE_1__ ifc_softc_ctx; int /*<<< orphan*/  ifc_flags; TYPE_2__* ifc_txqs; int /*<<< orphan*/  ifc_ifp; } ;
struct TYPE_8__ {int /*<<< orphan*/  ift_qstatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFC_PREFETCH ; 
 int /*<<< orphan*/  IFLIB_QUEUE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LINK_STATE_DOWN ; 
 int LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(if_ctx_t ctx, int link_state, uint64_t baudrate)
{
	if_t ifp = ctx->ifc_ifp;
	iflib_txq_t txq = ctx->ifc_txqs;

	FUNC4(ifp, baudrate);
	if (baudrate >= FUNC0(10)) {
		FUNC1(ctx);
		ctx->ifc_flags |= IFC_PREFETCH;
		FUNC2(ctx);
	}
	/* If link down, disable watchdog */
	if ((ctx->ifc_link_state == LINK_STATE_UP) && (link_state == LINK_STATE_DOWN)) {
		for (int i = 0; i < ctx->ifc_softc_ctx.isc_ntxqsets; i++, txq++)
			txq->ift_qstatus = IFLIB_QUEUE_IDLE;
	}
	ctx->ifc_link_state = link_state;
	FUNC3(ifp, link_state);
}