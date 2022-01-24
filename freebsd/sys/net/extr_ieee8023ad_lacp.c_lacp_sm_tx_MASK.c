#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lip_state; } ;
struct lacp_port {int lp_state; int lp_flags; TYPE_4__* lp_lsc; TYPE_2__* lp_ifp; int /*<<< orphan*/  lp_lacpdu_sent; int /*<<< orphan*/  lp_last_lacpdu; TYPE_1__ lp_partner; } ;
struct TYPE_7__ {int lsc_tx_test; } ;
struct TYPE_8__ {TYPE_3__ lsc_debug; } ;
struct TYPE_6__ {int if_dunit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_port*) ; 
 int LACP_FAST_PERIODIC_TIME ; 
 int LACP_PORT_NTT ; 
 int LACP_STATE_ACTIVITY ; 
 int LACP_STATE_AGGREGATION ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*) ; 
 int FUNC2 (struct lacp_port*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct lacp_port *lp)
{
	int error = 0;

	if (!(lp->lp_state & LACP_STATE_AGGREGATION)
#if 1
	    || (!(lp->lp_state & LACP_STATE_ACTIVITY)
	    && !(lp->lp_partner.lip_state & LACP_STATE_ACTIVITY))
#endif
	    ) {
		lp->lp_flags &= ~LACP_PORT_NTT;
	}

	if (!(lp->lp_flags & LACP_PORT_NTT)) {
		return;
	}

	/* Rate limit to 3 PDUs per LACP_FAST_PERIODIC_TIME */
	if (FUNC3(&lp->lp_last_lacpdu, &lp->lp_lacpdu_sent,
		    (3 / LACP_FAST_PERIODIC_TIME)) == 0) {
		FUNC0((lp, "rate limited pdu\n"));
		return;
	}

	if (((1 << lp->lp_ifp->if_dunit) & lp->lp_lsc->lsc_debug.lsc_tx_test) == 0) {
		error = FUNC2(lp);
	} else {
		FUNC1((lp, "Dropping TX PDU\n"));
	}

	if (error == 0) {
		lp->lp_flags &= ~LACP_PORT_NTT;
	} else {
		FUNC0((lp, "lacpdu transmit failure, error %d\n",
		    error));
	}
}