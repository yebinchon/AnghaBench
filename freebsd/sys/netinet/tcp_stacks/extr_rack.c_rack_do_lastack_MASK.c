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
struct tcpcb {int last_ack_sent; int t_flags; int /*<<< orphan*/  t_inpcb; scalar_t__ t_fb_ptr; scalar_t__ ts_recent; int /*<<< orphan*/  ts_recent_age; scalar_t__ t_fin_is_rst; } ;
struct tcp_rack {int /*<<< orphan*/  r_wanted_output; } ;
struct socket {int so_state; int /*<<< orphan*/  so_snd; } ;
struct mbuf {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BANDLIM_RST_OPENPORT ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int SS_NOFDREF ; 
 int TF_ACKNOW ; 
 int TF_NEEDSYN ; 
 int TH_ACK ; 
 int TH_FIN ; 
 int TH_RST ; 
 int TH_SYN ; 
 int TOF_TS ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct tcphdr*,struct tcpcb*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,struct tcpcb*,struct tcphdr*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,struct tcpcb*,struct tcphdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct tcpopt*,struct mbuf*,struct tcphdr*,struct tcpcb*,int*,int*,int*,int*) ; 
 int FUNC8 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*) ; 
 scalar_t__ FUNC9 (struct mbuf*,struct tcphdr*,struct tcpcb*,int,int,int*) ; 
 scalar_t__ FUNC10 (struct mbuf*,struct tcpcb*,int*,struct tcphdr*,struct socket*) ; 
 scalar_t__ FUNC11 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,int /*<<< orphan*/ ,int,int*,int,int*) ; 
 int FUNC12 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC13 (struct tcpcb*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 struct tcpcb* FUNC15 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int
FUNC18(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, struct tcpopt *to, int32_t drop_hdrlen, int32_t tlen,
    uint32_t tiwin, int32_t thflags, int32_t nxt_pkt)
{
	int32_t ret_val = 0;
	int32_t ourfinisacked = 0;

	FUNC2(so, tp);

	if ((thflags & TH_RST) ||
	    (tp->t_fin_is_rst && (thflags & TH_FIN)))
		return (FUNC8(m, th, so, tp));
	/*
	 * RFC5961 Section 4.2 Send challenge ACK for any SYN in
	 * synchronized state.
	 */
	if (thflags & TH_SYN) {
		FUNC3(m, th, tp, &ret_val);
		return (ret_val);
	}
	/*
	 * RFC 1323 PAWS: If we have a timestamp reply on this segment and
	 * it's less than ts_recent, drop it.
	 */
	if ((to->to_flags & TOF_TS) != 0 && tp->ts_recent &&
	    FUNC1(to->to_tsval, tp->ts_recent)) {
		if (FUNC9(m, th, tp, tlen, thflags, &ret_val))
			return (ret_val);
	}
	if (FUNC7(to, m, th, tp, &tlen, &thflags, &drop_hdrlen, &ret_val)) {
		return (ret_val);
	}
	/*
	 * If new data are received on a connection after the user processes
	 * are gone, then RST the other end.
	 */
	if ((so->so_state & SS_NOFDREF) && tlen) {
		if (FUNC10(m, tp, &tlen, th, so))
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
	    FUNC0(th->th_seq, tp->last_ack_sent) &&
	    FUNC0(tp->last_ack_sent, th->th_seq + tlen +
	    ((thflags & (TH_SYN | TH_FIN)) != 0))) {
		tp->ts_recent_age = FUNC17();
		tp->ts_recent = to->to_tsval;
	}
	/*
	 * If the ACK bit is off:  if in SYN-RECEIVED state or SENDSYN flag
	 * is on (half-synchronized state), then queue data for later
	 * processing; else drop segment and return.
	 */
	if ((thflags & TH_ACK) == 0) {
		if (tp->t_flags & TF_NEEDSYN) {
			return (FUNC12(m, th, so, tp, drop_hdrlen, tlen,
			    tiwin, thflags, nxt_pkt));
		} else if (tp->t_flags & TF_ACKNOW) {
			FUNC5(m, tp, th, thflags, tlen, &ret_val);
			((struct tcp_rack *)tp->t_fb_ptr)->r_wanted_output++;
			return (ret_val);
		} else {
			FUNC4(m, NULL);
			return (0);
		}
	}
	/*
	 * case TCPS_LAST_ACK: Ack processing.
	 */
	if (FUNC11(m, th, so, tp, to, tiwin, tlen, &ourfinisacked, thflags, &ret_val)) {
		return (ret_val);
	}
	if (ourfinisacked) {
		tp = FUNC15(tp);
		FUNC4(m, tp);
		return (1);
	}
	if (FUNC14(&so->so_snd)) {
		if (FUNC13(tp)) {
			FUNC16(tp->t_inpcb, ETIMEDOUT);
			FUNC6(m, tp, th, BANDLIM_RST_OPENPORT, tlen);
			return (1);
		}
	}
	return (FUNC12(m, th, so, tp, drop_hdrlen, tlen,
	    tiwin, thflags, nxt_pkt));
}