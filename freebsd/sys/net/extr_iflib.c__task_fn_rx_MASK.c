#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  TYPE_1__* iflib_rxq_t ;
typedef  TYPE_2__* if_ctx_t ;
struct TYPE_7__ {int ifc_sysctl_rx_budget; int ifc_flags; int /*<<< orphan*/  ifc_ifp; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifr_task; int /*<<< orphan*/  ifr_id; int /*<<< orphan*/ * ifr_cpu_exec_count; TYPE_2__* ifr_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IFCAP_NETMAP ; 
 int IFC_LEGACY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC4 (int) ; 
 size_t curcpu ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_intr_enables ; 
 int /*<<< orphan*/  task_fn_rxs ; 

__attribute__((used)) static void
FUNC9(void *context)
{
	iflib_rxq_t rxq = context;
	if_ctx_t ctx = rxq->ifr_ctx;
	bool more;
	uint16_t budget;

#ifdef IFLIB_DIAGNOSTICS
	rxq->ifr_cpu_exec_count[curcpu]++;
#endif
	FUNC0(task_fn_rxs);
	if (FUNC4(!(FUNC6(ctx->ifc_ifp) & IFF_DRV_RUNNING)))
		return;
	more = true;
#ifdef DEV_NETMAP
	if (if_getcapenable(ctx->ifc_ifp) & IFCAP_NETMAP) {
		u_int work = 0;
		if (netmap_rx_irq(ctx->ifc_ifp, rxq->ifr_id, &work)) {
			more = false;
		}
	}
#endif
	budget = ctx->ifc_sysctl_rx_budget;
	if (budget == 0)
		budget = 16;	/* XXX */
	if (more == false || (more = FUNC7(rxq, budget)) == false) {
		if (ctx->ifc_flags & IFC_LEGACY)
			FUNC2(ctx);
		else
			FUNC3(ctx, rxq->ifr_id);
		FUNC0(rx_intr_enables);
	}
	if (FUNC4(!(FUNC6(ctx->ifc_ifp) & IFF_DRV_RUNNING)))
		return;
	if (more)
		FUNC1(&rxq->ifr_task);
}