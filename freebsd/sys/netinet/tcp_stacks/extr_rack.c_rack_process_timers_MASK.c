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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct tcpcb {scalar_t__ t_state; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_2__ {int rc_hpts_flags; int rc_timer_exp; int rc_tlp_rxt_last_time; } ;
struct tcp_rack {TYPE_1__ r_ctl; scalar_t__ rc_tmr_stopped; scalar_t__ rc_last_pto_set; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PACE_PKT_OUTPUT ; 
 int PACE_TMR_DELACK ; 
 int PACE_TMR_KEEP ; 
 int PACE_TMR_MASK ; 
 int PACE_TMR_PERSIT ; 
 int PACE_TMR_RACK ; 
 int PACE_TMR_RXT ; 
 int PACE_TMR_TLP ; 
 scalar_t__ TCPS_LISTEN ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_rack*,int,int,int) ; 
 int FUNC3 (struct tcpcb*,struct tcp_rack*,int) ; 
 int FUNC4 (struct tcpcb*,struct tcp_rack*,int) ; 
 int FUNC5 (struct tcpcb*,struct tcp_rack*,int) ; 
 int FUNC6 (struct tcpcb*,struct tcp_rack*,int) ; 
 int FUNC7 (struct tcpcb*,struct tcp_rack*,int) ; 
 int FUNC8 (struct tcpcb*,struct tcp_rack*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct tcpcb *tp, struct tcp_rack *rack, uint32_t cts, uint8_t hpts_calling)
{
	int32_t ret = 0;
	int32_t timers = (rack->r_ctl.rc_hpts_flags & PACE_TMR_MASK);

	if (timers == 0) {
		return (0);
	}
	if (tp->t_state == TCPS_LISTEN) {
		/* no timers on listen sockets */
		if (rack->r_ctl.rc_hpts_flags & PACE_PKT_OUTPUT)
			return (0);
		return (1);
	}
	if (FUNC1(cts, rack->r_ctl.rc_timer_exp)) {
		uint32_t left;

		if (rack->r_ctl.rc_hpts_flags & PACE_PKT_OUTPUT) {
			ret = -1;
			FUNC2(rack, cts, ret, 0);
			return (0);
		}
		if (hpts_calling == 0) {
			ret = -2;
			FUNC2(rack, cts, ret, 0);
			return (0);
		}
		/*
		 * Ok our timer went off early and we are not paced false
		 * alarm, go back to sleep.
		 */
		ret = -3;
		left = rack->r_ctl.rc_timer_exp - cts;
		FUNC9(tp->t_inpcb, FUNC0(left));
		FUNC2(rack, cts, ret, left);
		rack->rc_last_pto_set = 0;
		return (1);
	}
	rack->rc_tmr_stopped = 0;
	rack->r_ctl.rc_hpts_flags &= ~PACE_TMR_MASK;
	if (timers & PACE_TMR_DELACK) {
		ret = FUNC3(tp, rack, cts);
	} else if (timers & PACE_TMR_RACK) {
		rack->r_ctl.rc_tlp_rxt_last_time = cts;
		ret = FUNC6(tp, rack, cts);
	} else if (timers & PACE_TMR_TLP) {
		rack->r_ctl.rc_tlp_rxt_last_time = cts;
		ret = FUNC8(tp, rack, cts);
	} else if (timers & PACE_TMR_RXT) {
		rack->r_ctl.rc_tlp_rxt_last_time = cts;
		ret = FUNC7(tp, rack, cts);
	} else if (timers & PACE_TMR_PERSIT) {
		ret = FUNC5(tp, rack, cts);
	} else if (timers & PACE_TMR_KEEP) {
		ret = FUNC4(tp, rack, cts);
	}
	FUNC2(rack, cts, ret, timers);
	return (ret);
}