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
struct tcpcb {int t_srtt; scalar_t__ t_rxtshift; int t_rttvar; int t_rttbest; scalar_t__ t_softerror; int /*<<< orphan*/  t_rttmin; int /*<<< orphan*/  t_rxtcur; scalar_t__ t_rtttime; int /*<<< orphan*/  t_rttupdated; int /*<<< orphan*/  t_inpcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPTV_REXMTMAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCP_DELTA_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 
 int TCP_RTTVAR_SHIFT ; 
 scalar_t__ TCP_RTT_INVALIDATE ; 
 int TCP_RTT_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tcps_rttupdated ; 

void
FUNC5(struct tcpcb *tp, int rtt)
{
	int delta;

	FUNC0(tp->t_inpcb);

	FUNC1(tcps_rttupdated);
	tp->t_rttupdated++;
	if ((tp->t_srtt != 0) && (tp->t_rxtshift <= TCP_RTT_INVALIDATE)) {
		/*
		 * srtt is stored as fixed point with 5 bits after the
		 * binary point (i.e., scaled by 8).  The following magic
		 * is equivalent to the smoothing algorithm in rfc793 with
		 * an alpha of .875 (srtt = rtt/8 + srtt*7/8 in fixed
		 * point).  Adjust rtt to origin 0.
		 */
		delta = ((rtt - 1) << TCP_DELTA_SHIFT)
			- (tp->t_srtt >> (TCP_RTT_SHIFT - TCP_DELTA_SHIFT));

		if ((tp->t_srtt += delta) <= 0)
			tp->t_srtt = 1;

		/*
		 * We accumulate a smoothed rtt variance (actually, a
		 * smoothed mean difference), then set the retransmit
		 * timer to smoothed rtt + 4 times the smoothed variance.
		 * rttvar is stored as fixed point with 4 bits after the
		 * binary point (scaled by 16).  The following is
		 * equivalent to rfc793 smoothing with an alpha of .75
		 * (rttvar = rttvar*3/4 + |delta| / 4).  This replaces
		 * rfc793's wired-in beta.
		 */
		if (delta < 0)
			delta = -delta;
		delta -= tp->t_rttvar >> (TCP_RTTVAR_SHIFT - TCP_DELTA_SHIFT);
		if ((tp->t_rttvar += delta) <= 0)
			tp->t_rttvar = 1;
		if (tp->t_rttbest > tp->t_srtt + tp->t_rttvar)
		    tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
	} else {
		/*
		 * No rtt measurement yet - use the unsmoothed rtt.
		 * Set the variance to half the rtt (so our first
		 * retransmit happens at 3*rtt).
		 */
		tp->t_srtt = rtt << TCP_RTT_SHIFT;
		tp->t_rttvar = rtt << (TCP_RTTVAR_SHIFT - 1);
		tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
	}
	tp->t_rtttime = 0;
	tp->t_rxtshift = 0;

	/*
	 * the retransmit should happen at rtt + 4 * rttvar.
	 * Because of the way we do the smoothing, srtt and rttvar
	 * will each average +1/2 tick of bias.  When we compute
	 * the retransmit timer, we want 1/2 tick of rounding and
	 * 1 extra tick because of +-1/2 tick uncertainty in the
	 * firing of the timer.  The bias will give us exactly the
	 * 1.5 tick we need.  But, because the bias is
	 * statistical, we have to test that we don't drop below
	 * the minimum feasible timer (which is 2 ticks).
	 */
	FUNC2(tp->t_rxtcur, FUNC3(tp),
		      FUNC4(tp->t_rttmin, rtt + 2), TCPTV_REXMTMAX);

	/*
	 * We received an ack for a packet that wasn't retransmitted;
	 * it is probably safe to discard any error indications we've
	 * received recently.  This isn't quite right, but close enough
	 * for now (a route might have failed after we sent a segment,
	 * and the return path might not be symmetrical).
	 */
	tp->t_softerror = 0;
}