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
struct tcphdr {scalar_t__ th_seq; } ;
struct tcpcb {int t_maxseg; scalar_t__ rcv_nxt; scalar_t__ last_ack_sent; int t_flags; scalar_t__ ts_recent; int /*<<< orphan*/  ts_recent_age; int /*<<< orphan*/  t_inpcb; scalar_t__ t_fin_is_rst; int /*<<< orphan*/  snd_wnd; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {int rc_delivered; int /*<<< orphan*/  rc_init_rwnd; } ;
struct tcp_bbr {int r_wanted_output; int /*<<< orphan*/  rc_tv; TYPE_1__ r_ctl; } ;
struct socket {int /*<<< orphan*/  so_snd; } ;
struct mbuf {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BANDLIM_RST_OPENPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tcpcb*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int TF_ACKNOW ; 
 int TF_NEEDSYN ; 
 scalar_t__ TH_ACK ; 
 scalar_t__ TH_FIN ; 
 scalar_t__ TH_RST ; 
 scalar_t__ TH_SYN ; 
 scalar_t__ TH_URG ; 
 int TOF_SACK ; 
 int TOF_TS ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,struct tcpopt*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int FUNC8 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct tcp_bbr*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*,struct tcphdr*,struct tcpcb*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*,struct tcpcb*,struct tcphdr*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct mbuf*,struct tcpcb*,struct tcphdr*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (struct tcpopt*,struct mbuf*,struct tcphdr*,struct tcpcb*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC16 (struct mbuf*,struct tcphdr*,struct socket*,struct tcpcb*) ; 
 scalar_t__ FUNC17 (struct mbuf*,struct tcphdr*,struct tcpcb*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(struct mbuf *m, struct tcphdr *th, struct socket *so,
    struct tcpcb *tp, struct tcpopt *to, int32_t drop_hdrlen, int32_t tlen,
    uint32_t tiwin, int32_t thflags, int32_t nxt_pkt)
{
	struct tcp_bbr *bbr;
	int32_t ret_val;

	/*
	 * Header prediction: check for the two common cases of a
	 * uni-directional data xfer.  If the packet has no control flags,
	 * is in-sequence, the window didn't change and we're not
	 * retransmitting, it's a candidate.  If the length is zero and the
	 * ack moved forward, we're the sender side of the xfer.  Just free
	 * the data acked & wake any higher level process that was blocked
	 * waiting for space.  If the length is non-zero and the ack didn't
	 * move, we're the receiver side.  If we're getting packets in-order
	 * (the reassembly queue is empty), add the data toc The socket
	 * buffer and note that we need a delayed ack. Make sure that the
	 * hidden state-flags are also off. Since we check for
	 * TCPS_ESTABLISHED first, it can only be TH_NEEDSYN.
	 */
	bbr = (struct tcp_bbr *)tp->t_fb_ptr;
	if (bbr->r_ctl.rc_delivered < (4 * tp->t_maxseg)) {
		/*
		 * If we have delived under 4 segments increase the initial
		 * window if raised by the peer. We use this to determine
		 * dynamic and static rwnd's at the end of a connection.
		 */
		bbr->r_ctl.rc_init_rwnd = FUNC18(tiwin, tp->snd_wnd);
	}
	if (FUNC4(((to->to_flags & TOF_SACK) == 0)) &&
	    FUNC4((thflags & (TH_SYN | TH_FIN | TH_RST | TH_URG | TH_ACK)) == TH_ACK) &&
	    FUNC4(FUNC1(tp)) &&
	    FUNC4(th->th_seq == tp->rcv_nxt)) {
		if (tlen == 0) {
			if (FUNC6(m, th, so, tp, to, drop_hdrlen, tlen,
			    tiwin, nxt_pkt)) {
				return (0);
			}
		} else {
			if (FUNC5(m, th, so, tp, to, drop_hdrlen, tlen,
			    tiwin, nxt_pkt)) {
				return (0);
			}
		}
	}
	FUNC10(so, tp);

	if ((thflags & TH_RST) ||
	    (tp->t_fin_is_rst && (thflags & TH_FIN)))
		return (FUNC16(m, th, so, tp));
	/*
	 * RFC5961 Section 4.2 Send challenge ACK for any SYN in
	 * synchronized state.
	 */
	if (thflags & TH_SYN) {
		FUNC11(m, th, tp, &ret_val);
		return (ret_val);
	}
	/*
	 * RFC 1323 PAWS: If we have a timestamp reply on this segment and
	 * it's less than ts_recent, drop it.
	 */
	if ((to->to_flags & TOF_TS) != 0 && tp->ts_recent &&
	    FUNC3(to->to_tsval, tp->ts_recent)) {
		if (FUNC17(m, th, tp, tlen, thflags, &ret_val))
			return (ret_val);
	}
	FUNC0(tp->t_inpcb);
	if (FUNC15(to, m, th, tp, &tlen, &thflags, &drop_hdrlen, &ret_val)) {
		return (ret_val);
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
	    FUNC2(th->th_seq, tp->last_ack_sent) &&
	    FUNC2(tp->last_ack_sent, th->th_seq + tlen +
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
			return (FUNC8(m, th, so, tp, drop_hdrlen, tlen,
			    tiwin, thflags, nxt_pkt));
		} else if (tp->t_flags & TF_ACKNOW) {
			FUNC13(m, tp, th, thflags, tlen, &ret_val);
			bbr->r_wanted_output = 1;
			return (ret_val);
		} else {
			FUNC12(m, NULL);
			return (0);
		}
	}
	/*
	 * Ack processing.
	 */
	if (FUNC7(m, th, so, tp, to, tiwin, tlen, NULL, thflags, &ret_val)) {
		return (ret_val);
	}
	if (FUNC19(&so->so_snd)) {
		if (FUNC9(bbr)) {
			FUNC14(m, tp, th, BANDLIM_RST_OPENPORT, tlen);
			return (1);
		}
	}
	/* State changes only happen in bbr_process_data() */
	return (FUNC8(m, th, so, tp, drop_hdrlen, tlen,
	    tiwin, thflags, nxt_pkt));
}