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
typedef  int /*<<< orphan*/  uint32_t ;
struct tcpopt {int to_flags; scalar_t__ to_tsval; } ;
struct tcphdr {int th_seq; } ;
struct tcpcb {int last_ack_sent; int t_flags; scalar_t__ ts_recent; int /*<<< orphan*/  ts_recent_age; int /*<<< orphan*/  t_inpcb; scalar_t__ t_fin_is_rst; scalar_t__ t_fb_ptr; } ;
struct tcp_bbr {int r_wanted_output; int /*<<< orphan*/  rc_tv; } ;
struct TYPE_2__ {int sb_state; } ;
struct socket {int so_state; int /*<<< orphan*/  so_snd; TYPE_1__ so_rcv; } ;
struct mbuf {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BANDLIM_RST_OPENPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SBS_CANTRCVMORE ; 
 scalar_t__ FUNC1 (int,int) ; 
 int SS_NOFDREF ; 
 int /*<<< orphan*/  TCPS_FIN_WAIT_2 ; 
 int TF_ACKNOW ; 
 int TF_NEEDSYN ; 
 int TH_ACK ; 
 int TH_FIN ; 
 int TH_RST ; 
 int TH_SYN ; 
 int TOF_TS ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TT_2MSL ; 
 scalar_t__ FUNC4 (struct mbuf*,struct tcp_bbr*,struct tcpcb*,int*,struct tcphdr*,struct socket*) ; 
 scalar_t__ FUNC5 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,int /*<<< orphan*/ ,int,int*,int,int*) ; 
 int FUNC6 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct tcp_bbr*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,struct tcphdr*,struct tcpcb*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*,struct tcpcb*,struct tcphdr*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*,struct tcpcb*,struct tcphdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct tcpopt*,struct mbuf*,struct tcphdr*,struct tcpcb*,int*,int*,int*,int*) ; 
 int FUNC14 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*) ; 
 scalar_t__ FUNC15 (struct mbuf*,struct tcphdr*,struct tcpcb*,int,int,int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*) ; 
 scalar_t__ tcp_fast_finwait2_recycle ; 
 int /*<<< orphan*/  tcp_finwait2_timeout ; 
 int /*<<< orphan*/  FUNC18 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, struct tcpopt *to, int32_t drop_hdrlen, int32_t tlen,
    uint32_t tiwin, int32_t thflags, int32_t nxt_pkt)
{
	int32_t ourfinisacked = 0;
	int32_t ret_val;
	struct tcp_bbr *bbr;

	bbr = (struct tcp_bbr *)tp->t_fb_ptr;
	FUNC8(so, tp);
	if ((thflags & TH_RST) ||
	    (tp->t_fin_is_rst && (thflags & TH_FIN)))
		return (FUNC14(m, th, so, tp));
	/*
	 * RFC5961 Section 4.2 Send challenge ACK for any SYN in
	 * synchronized state.
	 */
	if (thflags & TH_SYN) {
		FUNC9(m, th, tp, &ret_val);
		return (ret_val);
	}
	/*
	 * RFC 1323 PAWS: If we have a timestamp reply on this segment and
	 * it's less than ts_recent, drop it.
	 */
	if ((to->to_flags & TOF_TS) != 0 && tp->ts_recent &&
	    FUNC3(to->to_tsval, tp->ts_recent)) {
		if (FUNC15(m, th, tp, tlen, thflags, &ret_val))
			return (ret_val);
	}
	FUNC0(tp->t_inpcb);
	if (FUNC13(to, m, th, tp, &tlen, &thflags, &drop_hdrlen, &ret_val)) {
		return (ret_val);
	}
	/*
	 * If new data are received on a connection after the user processes
	 * are gone, then RST the other end.
	 */
	if ((so->so_state & SS_NOFDREF) && tlen) {
		/*
		 * We call a new function now so we might continue and setup
		 * to reset at all data being ack'd.
		 */
		if (FUNC4(m, bbr, tp, &tlen, th, so))
			return (1);
	}
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
	if ((to->to_flags & TOF_TS) != 0 &&
	    FUNC1(th->th_seq, tp->last_ack_sent) &&
	    FUNC1(tp->last_ack_sent, th->th_seq + tlen +
	    ((thflags & (TH_SYN | TH_FIN)) != 0))) {
		tp->ts_recent_age = FUNC20(&bbr->rc_tv);
		tp->ts_recent = to->to_tsval;
	}
	/*
	 * If the ACK bit is off:  if in SYN-RECEIVED state or SENDSYN flag
	 * is on (half-synchronized state), then queue data for later
	 * processing; else drop segment and return.
	 */
	if ((thflags & TH_ACK) == 0) {
		if (tp->t_flags & TF_NEEDSYN) {
			return (FUNC6(m, th, so, tp, drop_hdrlen, tlen,
			    tiwin, thflags, nxt_pkt));
		} else if (tp->t_flags & TF_ACKNOW) {
			FUNC11(m, tp, th, thflags, tlen, &ret_val);
			bbr->r_wanted_output = 1;
			return (ret_val);
		} else {
			FUNC10(m, NULL);
			return (0);
		}
	}
	/*
	 * Ack processing.
	 */
	if (FUNC5(m, th, so, tp, to, tiwin, tlen, &ourfinisacked, thflags, &ret_val)) {
		return (ret_val);
	}
	if (ourfinisacked) {
		/*
		 * If we can't receive any more data, then closing user can
		 * proceed. Starting the timer is contrary to the
		 * specification, but if we don't get a FIN we'll hang
		 * forever.
		 *
		 * XXXjl: we should release the tp also, and use a
		 * compressed state.
		 */
		if (so->so_rcv.sb_state & SBS_CANTRCVMORE) {
			FUNC17(so);
			FUNC19(tp, TT_2MSL,
			    (tcp_fast_finwait2_recycle ?
			    tcp_finwait2_timeout :
			    FUNC2(tp)));
		}
		FUNC18(tp, TCPS_FIN_WAIT_2);
	}
	if (FUNC16(&so->so_snd)) {
		if (FUNC7(bbr)) {
			FUNC12(m, tp, th, BANDLIM_RST_OPENPORT, tlen);
			return (1);
		}
	}
	return (FUNC6(m, th, so, tp, drop_hdrlen, tlen,
	    tiwin, thflags, nxt_pkt));
}