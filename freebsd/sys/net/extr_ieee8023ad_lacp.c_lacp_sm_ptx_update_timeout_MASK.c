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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int lip_state; } ;
struct lacp_port {TYPE_1__ lp_partner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_port*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int LACP_STATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LACP_TIMER_PERIODIC ; 
 int /*<<< orphan*/  FUNC3 (struct lacp_port*) ; 

__attribute__((used)) static void
FUNC4(struct lacp_port *lp, uint8_t oldpstate)
{
	if (FUNC1(oldpstate, lp->lp_partner.lip_state,
	    LACP_STATE_TIMEOUT)) {
		return;
	}

	FUNC0((lp, "partner timeout changed\n"));

	/*
	 * FAST_PERIODIC -> SLOW_PERIODIC
	 * or
	 * SLOW_PERIODIC (-> PERIODIC_TX) -> FAST_PERIODIC
	 *
	 * let lacp_sm_ptx_tx_schedule to update timeout.
	 */

	FUNC2(lp, LACP_TIMER_PERIODIC);

	/*
	 * if timeout has been shortened, assert NTT.
	 */

	if ((lp->lp_partner.lip_state & LACP_STATE_TIMEOUT)) {
		FUNC3(lp);
	}
}