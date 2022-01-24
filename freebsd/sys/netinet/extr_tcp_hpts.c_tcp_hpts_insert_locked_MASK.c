#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct tcp_hpts_entry {scalar_t__ p_hpts_active; scalar_t__ p_on_min_sleep; int p_hpts_sleep_time; int p_direct_wake; int /*<<< orphan*/  p_cpu; int /*<<< orphan*/  co; int /*<<< orphan*/  p_prev_slot; int /*<<< orphan*/ * p_hptss; int /*<<< orphan*/  p_lasttick; int /*<<< orphan*/  p_curtick; int /*<<< orphan*/  p_cur_slot; int /*<<< orphan*/  p_nxt_slot; int /*<<< orphan*/  p_runningtick; } ;
struct inpcb {scalar_t__ inp_in_hpts; int inp_hptsslot; int inp_hpts_request; } ;
struct hpts_diag {scalar_t__ p_hpts_active; int slot_req; scalar_t__ p_on_min_sleep; int hpts_sleep_time; int wheel_tick; int maxticks; int wheel_cts; int slot_remaining; int inp_hptsslot; int have_slept; int yet_to_sleep; int need_new_to; int co_ret; int /*<<< orphan*/  p_lasttick; int /*<<< orphan*/  p_curtick; int /*<<< orphan*/  p_cur_slot; int /*<<< orphan*/  p_nxt_slot; int /*<<< orphan*/  p_runningtick; int /*<<< orphan*/  p_prev_slot; } ;
typedef  int /*<<< orphan*/  sbintime_t ;
typedef  int int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int C_DIRECT_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_hpts_entry*) ; 
 int HPTS_TICKS_PER_USEC ; 
 int HPTS_USEC_IN_SEC ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcp_hpts_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_hpts_entry*,struct inpcb*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_hpts_entry*,struct inpcb*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hpts_timeout_dir ; 
 int /*<<< orphan*/  hpts_timeout_swi ; 
 int FUNC7 (struct tcp_hpts_entry*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct hpts_diag*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct tcp_hpts_entry*,struct inpcb*) ; 
 scalar_t__ tcp_hpts_callout_skip_swi ; 
 int /*<<< orphan*/  tcp_hpts_precision ; 
 int /*<<< orphan*/  FUNC10 (struct inpcb*,struct tcp_hpts_entry*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcp_hpts_entry*) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct timeval) ; 

__attribute__((used)) static void
FUNC15(struct tcp_hpts_entry *hpts, struct inpcb *inp, uint32_t slot, int32_t line,
		       struct hpts_diag *diag, struct timeval *tv)
{
	uint32_t need_new_to = 0;
	uint32_t wheel_cts, last_tick;
	int32_t wheel_tick, maxticks;
	int8_t need_wakeup = 0;

	FUNC1(hpts);
	if (diag) {
		FUNC8(diag, 0, sizeof(struct hpts_diag));
		diag->p_hpts_active = hpts->p_hpts_active;
		diag->p_prev_slot = hpts->p_prev_slot;
		diag->p_runningtick = hpts->p_runningtick;
		diag->p_nxt_slot = hpts->p_nxt_slot;
		diag->p_cur_slot = hpts->p_cur_slot;
		diag->p_curtick = hpts->p_curtick;
		diag->p_lasttick = hpts->p_lasttick;
		diag->slot_req = slot;
		diag->p_on_min_sleep = hpts->p_on_min_sleep;
		diag->hpts_sleep_time = hpts->p_hpts_sleep_time;
	}
	if (inp->inp_in_hpts == 0) {
		if (slot == 0) {
			/* Immediate */
			FUNC10(inp, hpts, line, 0);
			return;
		}
		/* Get the current time relative to the wheel */
		wheel_cts = FUNC11(tv);
		/* Map it onto the wheel */
		wheel_tick = FUNC13(wheel_cts);
		/* Now what's the max we can place it at? */
		maxticks = FUNC7(hpts, wheel_tick, &last_tick);
		if (diag) {
			diag->wheel_tick = wheel_tick;
			diag->maxticks = maxticks;
			diag->wheel_cts = wheel_cts;
		}
		if (maxticks == 0) {
			/* The pacer is in a wheel wrap behind, yikes! */
			if (slot > 1) {
				/* 
				 * Reduce by 1 to prevent a forever loop in
				 * case something else is wrong. Note this
				 * probably does not hurt because the pacer
				 * if its true is so far behind we will be
				 * > 1second late calling anyway.
				 */
				slot--;
			}
			inp->inp_hptsslot = last_tick;
			inp->inp_hpts_request = slot;
		} else 	if (maxticks >= slot) {
			/* It all fits on the wheel */
			inp->inp_hpts_request = 0;
			inp->inp_hptsslot = FUNC5(wheel_tick, slot);
		} else {
			/* It does not fit */
			inp->inp_hpts_request = slot - maxticks;
			inp->inp_hptsslot = last_tick;
		}
		if (diag) {
			diag->slot_remaining = inp->inp_hpts_request;
			diag->inp_hptsslot = inp->inp_hptsslot;
		}
#ifdef INVARIANTS
		check_if_slot_would_be_wrong(hpts, inp, inp->inp_hptsslot, line);
#endif
		FUNC4(hpts, inp, &hpts->p_hptss[inp->inp_hptsslot], line, 0);
		if ((hpts->p_hpts_active == 0) &&
		    (inp->inp_hpts_request == 0) &&
		    (hpts->p_on_min_sleep == 0)) {
			/*
			 * The hpts is sleeping and not on a minimum
			 * sleep time, we need to figure out where
			 * it will wake up at and if we need to reschedule
			 * its time-out.
			 */
			uint32_t have_slept, yet_to_sleep;

			/* Now do we need to restart the hpts's timer? */
			have_slept = FUNC6(hpts->p_prev_slot, wheel_tick);
			if (have_slept < hpts->p_hpts_sleep_time)
				yet_to_sleep = hpts->p_hpts_sleep_time - have_slept;
			else {
				/* We are over-due */
				yet_to_sleep = 0;
				need_wakeup = 1;
			}
			if (diag) {
				diag->have_slept = have_slept;
				diag->yet_to_sleep = yet_to_sleep;
			}
			if (yet_to_sleep &&
			    (yet_to_sleep > slot)) {
				/*
				 * We need to reschedule the hpts's time-out.
				 */
				hpts->p_hpts_sleep_time = slot;
				need_new_to = slot * HPTS_TICKS_PER_USEC;
			}
		}
		/*
		 * Now how far is the hpts sleeping to? if active is 1, its
		 * up and ticking we do nothing, otherwise we may need to
		 * reschedule its callout if need_new_to is set from above.
		 */
		if (need_wakeup) {
			hpts->p_direct_wake = 1;
			FUNC12(hpts);
			if (diag) {
				diag->need_new_to = 0;
				diag->co_ret = 0xffff0000;
			}
		} else if (need_new_to) {
			int32_t co_ret;
			struct timeval tv;
			sbintime_t sb;

			tv.tv_sec = 0;
			tv.tv_usec = 0;
			while (need_new_to > HPTS_USEC_IN_SEC) {
				tv.tv_sec++;
				need_new_to -= HPTS_USEC_IN_SEC;
			}
			tv.tv_usec = need_new_to;
			sb = FUNC14(tv);
			if (tcp_hpts_callout_skip_swi == 0) {
				co_ret = FUNC2(&hpts->co, sb, 0,
				    hpts_timeout_swi, hpts, hpts->p_cpu,
				    (C_DIRECT_EXEC | FUNC0(tcp_hpts_precision)));
			} else {
				co_ret = FUNC2(&hpts->co, sb, 0,
				    hpts_timeout_dir, hpts,
				    hpts->p_cpu,
				    FUNC0(tcp_hpts_precision));
			}
			if (diag) {
				diag->need_new_to = need_new_to;
				diag->co_ret = co_ret;
			}
		}
	} else {
#ifdef INVARIANTS
		panic("Hpts:%p tp:%p already on hpts and add?", hpts, inp);
#endif
	}
}