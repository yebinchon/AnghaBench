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
typedef  scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ t_state; } ;
struct TYPE_2__ {scalar_t__ rc_lost; int /*<<< orphan*/  rc_hpts_flags; int /*<<< orphan*/ * rc_resend; int /*<<< orphan*/  rc_timer_exp; } ;
struct tcp_bbr {scalar_t__ r_state; TYPE_1__ r_ctl; scalar_t__ rc_all_timers_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BBR_TO_FRM_RACK ; 
 int /*<<< orphan*/  PACE_TMR_RACK ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct tcpcb*,struct tcp_bbr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_bbr*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_bbr*,scalar_t__,int) ; 
 scalar_t__ bbr_policer_call_from_rack_to ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*,struct tcp_bbr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbr_to_tot ; 

__attribute__((used)) static int
FUNC6(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{
	/*
	 * This timer simply provides an internal trigger to send out data.
	 * The check_recovery_mode call will see if there are needed
	 * retransmissions, if so we will enter fast-recovery. The output
	 * call may or may not do the same thing depending on sysctl
	 * settings.
	 */
	uint32_t lost;
	
	if (bbr->rc_all_timers_stopped) {
		return (1);
	}
	if (FUNC1(cts, bbr->r_ctl.rc_timer_exp)) {
		/* Its not time yet */
		return (0);
	}
	FUNC0(bbr_to_tot);
	lost = bbr->r_ctl.rc_lost;
	if (bbr->r_state && (bbr->r_state != tp->t_state))
		FUNC5(tp, bbr, 0);
	FUNC3(bbr, cts, BBR_TO_FRM_RACK);
	if (bbr->r_ctl.rc_resend == NULL) {
		/* Lets do the check here */
		bbr->r_ctl.rc_resend = FUNC2(tp, bbr, cts);
	}
	if (bbr_policer_call_from_rack_to)
		FUNC4(bbr, cts, (bbr->r_ctl.rc_lost > lost));
	bbr->r_ctl.rc_hpts_flags &= ~PACE_TMR_RACK;
	return (0);
}