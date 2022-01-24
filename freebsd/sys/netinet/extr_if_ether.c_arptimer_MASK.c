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
struct in_addr {int dummy; } ;
struct TYPE_3__ {struct in_addr addr4; } ;
struct llentry {int la_flags; int ln_state; int r_skip_req; TYPE_2__* lle_tbl; int /*<<< orphan*/  lle_timer; int /*<<< orphan*/  la_expire; int /*<<< orphan*/  la_preempt; TYPE_1__ r_l3addr; } ;
struct ifnet {int /*<<< orphan*/  if_vnet; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_4__ {struct ifnet* llt_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  ARP_LLINFO_DELETED 131 
#define  ARP_LLINFO_INCOMPLETE 130 
#define  ARP_LLINFO_REACHABLE 129 
#define  ARP_LLINFO_VERIFY 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct llentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int LLENTRY_EXPIRED ; 
 int LLENTRY_TIMEDOUT ; 
 int LLE_DELETED ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  FUNC7 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct llentry*) ; 
 int LLE_STATIC ; 
 int LLE_VALID ; 
 int /*<<< orphan*/  FUNC10 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC13 (struct epoch_tracker) ; 
 int V_arpt_rexmit ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ *,struct in_addr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dropped ; 
 int hz ; 
 int /*<<< orphan*/  lle_event ; 
 size_t FUNC18 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,struct llentry*) ; 
 int /*<<< orphan*/  time_uptime ; 
 int /*<<< orphan*/  timeouts ; 

__attribute__((used)) static void
FUNC20(void *arg)
{
	struct llentry *lle = (struct llentry *)arg;
	struct ifnet *ifp;
	int r_skip_req;

	if (lle->la_flags & LLE_STATIC) {
		return;
	}
	FUNC10(lle);
	if (FUNC15(&lle->lle_timer)) {
		/*
		 * Here we are a bit odd here in the treatment of 
		 * active/pending. If the pending bit is set, it got
		 * rescheduled before I ran. The active
		 * bit we ignore, since if it was stopped
		 * in ll_tablefree() and was currently running
		 * it would have return 0 so the code would
		 * not have deleted it since the callout could
		 * not be stopped so we want to go through
		 * with the delete here now. If the callout
		 * was restarted, the pending bit will be back on and
		 * we just want to bail since the callout_reset would
		 * return 1 and our reference would have been removed
		 * by arpresolve() below.
		 */
		FUNC11(lle);
 		return;
 	}
	ifp = lle->lle_tbl->llt_ifp;
	FUNC3(ifp->if_vnet);

	switch (lle->ln_state) {
	case ARP_LLINFO_REACHABLE:

		/*
		 * Expiration time is approaching.
		 * Let's try to refresh entry if it is still
		 * in use.
		 *
		 * Set r_skip_req to get feedback from
		 * fast path. Change state and re-schedule
		 * ourselves.
		 */
		FUNC8(lle);
		lle->r_skip_req = 1;
		FUNC9(lle);
		lle->ln_state = ARP_LLINFO_VERIFY;
		FUNC16(&lle->lle_timer, hz * V_arpt_rexmit);
		FUNC11(lle);
		FUNC2();
		return;
	case ARP_LLINFO_VERIFY:
		FUNC8(lle);
		r_skip_req = lle->r_skip_req;
		FUNC9(lle);

		if (r_skip_req == 0 && lle->la_preempt > 0) {
			/* Entry was used, issue refresh request */
			struct epoch_tracker et;
			struct in_addr dst;

			dst = lle->r_l3addr.addr4;
			lle->la_preempt--;
			FUNC16(&lle->lle_timer, hz * V_arpt_rexmit);
			FUNC11(lle);
			FUNC12(et);
			FUNC14(ifp, NULL, &dst, NULL);
			FUNC13(et);
			FUNC2();
			return;
		}
		/* Nothing happened. Reschedule if not too late */
		if (lle->la_expire > time_uptime) {
			FUNC16(&lle->lle_timer, hz * V_arpt_rexmit);
			FUNC11(lle);
			FUNC2();
			return;
		}
		break;
	case ARP_LLINFO_INCOMPLETE:
	case ARP_LLINFO_DELETED:
		break;
	}

	if ((lle->la_flags & LLE_DELETED) == 0) {
		int evt;

		if (lle->la_flags & LLE_VALID)
			evt = LLENTRY_EXPIRED;
		else
			evt = LLENTRY_TIMEDOUT;
		FUNC4(lle_event, lle, evt);
	}

	FUNC17(&lle->lle_timer);

	/* XXX: LOR avoidance. We still have ref on lle. */
	FUNC11(lle);
	FUNC5(ifp);
	FUNC10(lle);

	/* Guard against race with other llentry_free(). */
	if (lle->la_flags & LLE_LINKED) {
		FUNC7(lle);
		FUNC19(lle->lle_tbl, lle);
	}
	FUNC6(ifp);

	size_t pkts_dropped = FUNC18(lle);

	FUNC0(dropped, pkts_dropped);
	FUNC1(timeouts);

	FUNC2();
}