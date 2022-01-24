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
typedef  int /*<<< orphan*/  uint32_t ;
struct tcpopt {int to_flags; scalar_t__ to_tsval; } ;
struct tcphdr {int th_seq; } ;
struct tcpcb {int last_ack_sent; int t_flags; int /*<<< orphan*/  t_inpcb; scalar_t__ ts_recent; int /*<<< orphan*/  ts_recent_age; scalar_t__ t_fin_is_rst; scalar_t__ t_fb_ptr; } ;
struct tcp_bbr {int r_wanted_output; int /*<<< orphan*/  rc_tv; } ;
struct socket {int so_state; int /*<<< orphan*/  so_snd; } ;
struct mbuf {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BANDLIM_RST_OPENPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int SS_NOFDREF ; 
 int TF_ACKNOW ; 
 int TF_NEEDSYN ; 
 int TH_ACK ; 
 int TH_FIN ; 
 int TH_RST ; 
 int TH_SYN ; 
 int TOF_TS ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct mbuf*,struct tcp_bbr*,struct tcpcb*,int*,struct tcphdr*,struct socket*) ; 
 scalar_t__ FUNC4 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,int /*<<< orphan*/ ,int,int*,int,int*) ; 
 int FUNC5 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (struct tcp_bbr*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,struct tcphdr*,struct tcpcb*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*,struct tcpcb*,struct tcphdr*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*,struct tcpcb*,struct tcphdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct tcpopt*,struct mbuf*,struct tcphdr*,struct tcpcb*,int*,int*,int*,int*) ; 
 int FUNC13 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*) ; 
 scalar_t__ FUNC14 (struct mbuf*,struct tcphdr*,struct tcpcb*,int,int,int*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, struct tcpopt *to, int32_t drop_hdrlen, int32_t tlen,
    uint32_t tiwin, int32_t thflags, int32_t nxt_pkt)
{
	int32_t ourfinisacked = 0;
	int32_t ret_val;
	struct tcp_bbr *bbr;

	bbr = (struct tcp_bbr *)tp->t_fb_ptr;
	FUNC7(so, tp);
	/* Reset receive buffer auto scaling when not in bulk receive mode. */
	if ((thflags & TH_RST) ||
	    (tp->t_fin_is_rst && (thflags & TH_FIN)))
		return (FUNC13(m, th, so, tp));

	/*
	 * RFC5961 Section 4.2 Send challenge ACK for any SYN in
	 * synchronized state.
	 */
	if (thflags & TH_SYN) {
		FUNC8(m, th, tp, &ret_val);
		return (ret_val);
	}
	FUNC0(tp->t_inpcb);
	/*
	 * RFC 1323 PAWS: If we have a timestamp reply on this segment and
	 * it's less than ts_recent, drop it.
	 */
	if ((to->to_flags & TOF_TS) != 0 && tp->ts_recent &&
	    FUNC2(to->to_tsval, tp->ts_recent)) {
		if (FUNC14(m, th, tp, tlen, thflags, &ret_val))
			return (ret_val);
	}
	FUNC0(tp->t_inpcb);
	if (FUNC12(to, m, th, tp, &tlen, &thflags, &drop_hdrlen, &ret_val)) {
		return (ret_val);
	}
	/*
	 * If new data are received on a connection after the user processes
	 * are gone, then we may RST the other end depending on the outcome
	 * of bbr_check_data_after_close.
	 */
	if ((so->so_state & SS_NOFDREF) &&
	    tlen) {
		/*
		 * We call a new function now so we might continue and setup
		 * to reset at all data being ack'd.
		 */
		if (FUNC3(m, bbr, tp, &tlen, th, so))
			return (1);
	}
	FUNC0(tp->t_inpcb);
	/*
	 * If last ACK falls within this segment's sequence numbers, record
	 * its timestamp. NOTE: 1) That the test incorporates suggestions
	 * from the latest proposal of the tcplw@cray.com list (Braden
	 * 1993/04/26). 2) That updating only on newer timestamps interferes
	 * with our earlier PAWS tests, so this check should be solely
	 * predicated on the sequence space of this segment. 3) That we
	 * modify the segment boundary check to be Last.ACK.Sent <= SEG.SEQ
	 * + SEG.Len  instead of RFC1323's Last.ACK.Sent < SEG.SEQ +
	 * SEG.Len, This modified check allows us to overcome RFC1323's
	 * limitations as described in Stevens TCP/IP Illustrated Vol. 2
	 * p.869. In such cases, we can still calculate the RTT correctly
	 * when RCV.NXT == Last.ACK.Sent.
	 */
	FUNC0(tp->t_inpcb);
	if ((to->to_flags & TOF_TS) != 0 &&
	    FUNC1(th->th_seq, tp->last_ack_sent) &&
	    FUNC1(tp->last_ack_sent, th->th_seq + tlen +
	    ((thflags & (TH_SYN | TH_FIN)) != 0))) {
		tp->ts_recent_age = FUNC16(&bbr->rc_tv);
		tp->ts_recent = to->to_tsval;
	}
	/*
	 * If the ACK bit is off:  if in SYN-RECEIVED state or SENDSYN flag
	 * is on (half-synchronized state), then queue data for later
	 * processing; else drop segment and return.
	 */
	if ((thflags & TH_ACK) == 0) {
		if (tp->t_flags & TF_NEEDSYN) {
			return (FUNC5(m, th, so, tp, drop_hdrlen, tlen,
			    tiwin, thflags, nxt_pkt));
		} else if (tp->t_flags & TF_ACKNOW) {
			FUNC10(m, tp, th, thflags, tlen, &ret_val);
			bbr->r_wanted_output = 1;
			return (ret_val);
		} else {
			FUNC9(m, NULL);
			return (0);
		}
	}
	/*
	 * Ack processing.
	 */
	FUNC0(tp->t_inpcb);
	if (FUNC4(m, th, so, tp, to, tiwin, tlen, &ourfinisacked, thflags, &ret_val)) {
		return (ret_val);
	}
	if (FUNC15(&so->so_snd)) {
		if (FUNC6(bbr)) {
			FUNC11(m, tp, th, BANDLIM_RST_OPENPORT, tlen);
			return (1);
		}
	}
	FUNC0(tp->t_inpcb);
	return (FUNC5(m, th, so, tp, drop_hdrlen, tlen,
	    tiwin, thflags, nxt_pkt));
}