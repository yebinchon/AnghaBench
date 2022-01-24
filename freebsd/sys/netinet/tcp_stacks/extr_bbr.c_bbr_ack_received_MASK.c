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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {int t_flags; int gput_ts; int t_stats_gput_prev; scalar_t__ t_maxseg; scalar_t__ snd_cwnd; int /*<<< orphan*/  t_stats; scalar_t__ gput_seq; int /*<<< orphan*/  gput_ack; int /*<<< orphan*/  t_inpcb; } ;
struct TYPE_2__ {int rc_rcvtime; scalar_t__ bbr_rttprobe_gain_val; int rc_recovery_start; scalar_t__ restrict_growth; scalar_t__ rc_lost_bytes; scalar_t__ rc_sacked; scalar_t__ rc_bbr_cwnd_gain; int /*<<< orphan*/  rc_delrate; } ;
struct tcp_bbr {scalar_t__ rc_bbr_state; scalar_t__ rc_use_google; scalar_t__ rc_last_options; int bbr_prev_in_rec; int pkt_conservation; scalar_t__ rc_past_init_win; scalar_t__ rc_no_pacing; scalar_t__ rc_filled_pipe; TYPE_1__ r_ctl; int /*<<< orphan*/  rc_tp; } ;
typedef  int int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_RTT_PROP ; 
 scalar_t__ BBR_STATE_PROBE_RTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int TF_GPUTINPROG ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  VOI_TCP_GPUT ; 
 int /*<<< orphan*/  VOI_TCP_GPUT_ND ; 
 scalar_t__ bbr_cwnd_may_shrink ; 
 scalar_t__ FUNC4 (struct tcp_bbr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tcp_bbr*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct tcp_bbr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_bbr*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct tcpcb*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct tcp_bbr*) ; 
 void* FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC15(struct tcpcb *tp, struct tcp_bbr *bbr, struct tcphdr *th, uint32_t bytes_this_ack,
		 uint32_t sack_changed, uint32_t prev_acked, int32_t line, uint32_t losses)
{
	FUNC0(tp->t_inpcb);
	uint64_t bw;
	uint32_t cwnd, target_cwnd, saved_bytes, maxseg;
	int32_t meth;

#ifdef NETFLIX_STATS
	if ((tp->t_flags & TF_GPUTINPROG) &&
	    SEQ_GEQ(th->th_ack, tp->gput_ack)) {
		/*
		 * Strech acks and compressed acks will cause this to
		 * oscillate but we are doing it the same way as the main
		 * stack so it will be compariable (though possibly not
		 * ideal).
		 */
		int32_t cgput;
		int64_t gput, time_stamp;

		gput = (int64_t) (th->th_ack - tp->gput_seq) * 8;
		time_stamp = max(1, ((bbr->r_ctl.rc_rcvtime - tp->gput_ts) / 1000));
		cgput = gput / time_stamp;
		stats_voi_update_abs_u32(tp->t_stats, VOI_TCP_GPUT,
					 cgput);
		if (tp->t_stats_gput_prev > 0)
			stats_voi_update_abs_s32(tp->t_stats,
						 VOI_TCP_GPUT_ND,
						 ((gput - tp->t_stats_gput_prev) * 100) /
						 tp->t_stats_gput_prev);
		tp->t_flags &= ~TF_GPUTINPROG;
		tp->t_stats_gput_prev = cgput;
	}
#endif
	if ((bbr->rc_bbr_state == BBR_STATE_PROBE_RTT) &&
	    ((bbr->r_ctl.bbr_rttprobe_gain_val == 0) || bbr->rc_use_google)) {
		/* We don't change anything in probe-rtt */
		return;
	}
	maxseg = tp->t_maxseg - bbr->rc_last_options;
	saved_bytes = bytes_this_ack;
	bytes_this_ack += sack_changed;
	if (bytes_this_ack > prev_acked) {
		bytes_this_ack -= prev_acked;
		/* 
		 * A byte ack'd gives us a full mss 
		 * to be like linux i.e. they count packets.
		 */
		if ((bytes_this_ack < maxseg) && bbr->rc_use_google)
			bytes_this_ack = maxseg;
	} else {
		/* Unlikely */
		bytes_this_ack = 0;
	}
	cwnd = tp->snd_cwnd;
	bw = FUNC9(&bbr->r_ctl.rc_delrate);
	if (bw) 
		target_cwnd = FUNC5(bbr,
						  bw,
						  (uint32_t)bbr->r_ctl.rc_bbr_cwnd_gain);
	else
		target_cwnd = FUNC6(bbr, bbr->rc_tp);
	if (FUNC1(tp->t_flags) &&
	    (bbr->bbr_prev_in_rec == 0)) {
		/* 
		 * We are entering recovery and
		 * thus packet conservation.
		 */
		bbr->pkt_conservation = 1;
		bbr->r_ctl.rc_recovery_start = bbr->r_ctl.rc_rcvtime;
		cwnd = FUNC8(tp,
				       (bbr->r_ctl.rc_sacked + bbr->r_ctl.rc_lost_bytes)) +
			bytes_this_ack;
	}
	if (FUNC1(tp->t_flags)) {
		uint32_t flight;

		bbr->bbr_prev_in_rec = 1;
		if (cwnd > losses) {
			cwnd -= losses;
			if (cwnd < maxseg)
				cwnd = maxseg;
		} else
			cwnd = maxseg;
		flight = FUNC8(tp,
					 (bbr->r_ctl.rc_sacked + bbr->r_ctl.rc_lost_bytes));
		FUNC7(bbr, flight, 0,
				     losses, 10, 0, 0, line);
		if (bbr->pkt_conservation) {
			uint32_t time_in;

			if (FUNC3(bbr->r_ctl.rc_rcvtime, bbr->r_ctl.rc_recovery_start))
				time_in = bbr->r_ctl.rc_rcvtime - bbr->r_ctl.rc_recovery_start;
			else 
				time_in = 0;

			if (time_in >= FUNC4(bbr, BBR_RTT_PROP)) {
				/* Clear packet conservation after an rttProp */
				bbr->pkt_conservation = 0;
			} else {
				if ((flight + bytes_this_ack) > cwnd)
					cwnd = flight + bytes_this_ack;
				if (cwnd < FUNC10(bbr))
					cwnd = FUNC10(bbr);
				tp->snd_cwnd = cwnd;
				FUNC7(bbr, saved_bytes, sack_changed,
						     prev_acked, 1, target_cwnd, th->th_ack, line);
				return;
			}
		}
	} else
		bbr->bbr_prev_in_rec = 0;
	if ((bbr->rc_use_google == 0) && bbr->r_ctl.restrict_growth) {
		bbr->r_ctl.restrict_growth--;
		if (bytes_this_ack > maxseg)
			bytes_this_ack = maxseg;
	}
	if (bbr->rc_filled_pipe) {
		/*
		 * Here we have exited startup and filled the pipe. We will
		 * thus allow the cwnd to shrink to the target. We hit here
		 * mostly.
		 */
		uint32_t s_cwnd;

		meth = 2;
		s_cwnd = FUNC12((cwnd + bytes_this_ack), target_cwnd);
		if (s_cwnd > cwnd)
			cwnd = s_cwnd;
		else if (bbr_cwnd_may_shrink || bbr->rc_use_google || bbr->rc_no_pacing)
			cwnd = s_cwnd;
	} else {
		/*
		 * Here we are still in startup, we increase cwnd by what
		 * has been acked.
		 */
		if ((cwnd < target_cwnd) ||
		    (bbr->rc_past_init_win == 0)) {
			meth = 3;
			cwnd += bytes_this_ack;
		} else {
			/* 
			 * Method 4 means we are at target so no gain in
			 * startup and past the initial window.
			 */
			meth = 4;
		}
	}
	tp->snd_cwnd = FUNC11(cwnd, FUNC10(bbr));
	FUNC7(bbr, saved_bytes, sack_changed, prev_acked, meth, target_cwnd, th->th_ack, line);
}