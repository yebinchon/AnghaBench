#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int lip_state; } ;
struct TYPE_5__ {int lip_state; } ;
struct lacpdu {TYPE_3__ ldu_partner; TYPE_2__ ldu_actor; } ;
struct lacp_port {int lp_state; TYPE_2__ lp_partner; TYPE_1__* lp_lsc; int /*<<< orphan*/  lp_actor; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int boolean_t ;
struct TYPE_4__ {scalar_t__ lsc_strict_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_port*) ; 
 int /*<<< orphan*/  LACP_STATESTR_MAX ; 
 int LACP_STATE_ACTIVITY ; 
 int LACP_STATE_AGGREGATION ; 
 int LACP_STATE_DEFAULTED ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 int LACP_STATE_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lacp_port*,int) ; 

__attribute__((used)) static void
FUNC6(struct lacp_port *lp, const struct lacpdu *du)
{
	boolean_t active;
	uint8_t oldpstate;
	char buf[LACP_STATESTR_MAX+1];

	FUNC2(lp);

	oldpstate = lp->lp_partner.lip_state;

	active = (du->ldu_actor.lip_state & LACP_STATE_ACTIVITY)
	    || ((lp->lp_state & LACP_STATE_ACTIVITY) &&
	    (du->ldu_partner.lip_state & LACP_STATE_ACTIVITY));

	lp->lp_partner = du->ldu_actor;
	if (active &&
	    ((FUNC1(lp->lp_state, du->ldu_partner.lip_state,
	    LACP_STATE_AGGREGATION) &&
	    !FUNC3(&lp->lp_actor, &du->ldu_partner))
	    || (du->ldu_partner.lip_state & LACP_STATE_AGGREGATION) == 0)) {
		/*
		 * XXX Maintain legacy behavior of leaving the
		 * LACP_STATE_SYNC bit unchanged from the partner's
		 * advertisement if lsc_strict_mode is false.
		 * TODO: We should re-examine the concept of the "strict mode"
		 * to ensure it makes sense to maintain a non-strict mode.
		 */
		if (lp->lp_lsc->lsc_strict_mode)
			lp->lp_partner.lip_state |= LACP_STATE_SYNC;
	} else {
		lp->lp_partner.lip_state &= ~LACP_STATE_SYNC;
	}

	lp->lp_state &= ~LACP_STATE_DEFAULTED;

	if (oldpstate != lp->lp_partner.lip_state) {
		FUNC0((lp, "old pstate %s\n",
		    FUNC4(oldpstate, buf, sizeof(buf))));
		FUNC0((lp, "new pstate %s\n",
		    FUNC4(lp->lp_partner.lip_state, buf,
		    sizeof(buf))));
	}

	FUNC5(lp, oldpstate);
}