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
struct tcpopt {int dummy; } ;
struct tcphdr {int th_seq; int th_urp; } ;
struct tcpcb {int rcv_nxt; int t_flags; int rcv_wnd; } ;
struct mbuf {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TF_ACKNOW ; 
 int TF_SACK_PERMIT ; 
 int TH_FIN ; 
 int TH_PUSH ; 
 int TH_SYN ; 
 int TH_URG ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct tcpcb*,struct tcphdr*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*,int,int) ; 
 int /*<<< orphan*/  tcps_rcvbyteafterwin ; 
 int /*<<< orphan*/  tcps_rcvdupbyte ; 
 int /*<<< orphan*/  tcps_rcvduppack ; 
 int /*<<< orphan*/  tcps_rcvpackafterwin ; 
 int /*<<< orphan*/  tcps_rcvpartdupbyte ; 
 int /*<<< orphan*/  tcps_rcvpartduppack ; 
 int /*<<< orphan*/  tcps_rcvwinprobe ; 

int
FUNC5(struct tcpopt *to, struct mbuf *m, struct tcphdr *th, struct tcpcb *tp, int32_t * tlenp,  int32_t * thf, int32_t * drop_hdrlen, int32_t * ret_val)
{
	int32_t todrop;
	int32_t thflags;
	int32_t tlen;

	thflags = *thf;
	tlen = *tlenp;
	todrop = tp->rcv_nxt - th->th_seq;
	if (todrop > 0) {
		if (thflags & TH_SYN) {
			thflags &= ~TH_SYN;
			th->th_seq++;
			if (th->th_urp > 1)
				th->th_urp--;
			else
				thflags &= ~TH_URG;
			todrop--;
		}
		/*
		 * Following if statement from Stevens, vol. 2, p. 960.
		 */
		if (todrop > tlen
		    || (todrop == tlen && (thflags & TH_FIN) == 0)) {
			/*
			 * Any valid FIN must be to the left of the window.
			 * At this point the FIN must be a duplicate or out
			 * of sequence; drop it.
			 */
			thflags &= ~TH_FIN;
			/*
			 * Send an ACK to resynchronize and drop any data.
			 * But keep on processing for RST or ACK.
			 */
			tp->t_flags |= TF_ACKNOW;
			todrop = tlen;
			FUNC1(tcps_rcvduppack);
			FUNC0(tcps_rcvdupbyte, todrop);
		} else {
			FUNC1(tcps_rcvpartduppack);
			FUNC0(tcps_rcvpartdupbyte, todrop);
		}
		/*
		 * DSACK - add SACK block for dropped range
		 */
		if (tp->t_flags & TF_SACK_PERMIT) {
			FUNC4(tp, th->th_seq,
			    th->th_seq + todrop);
			/*
			 * ACK now, as the next in-sequence segment
			 * will clear the DSACK block again
			 */
			tp->t_flags |= TF_ACKNOW;
		}
		*drop_hdrlen += todrop;	/* drop from the top afterwards */
		th->th_seq += todrop;
		tlen -= todrop;
		if (th->th_urp > todrop)
			th->th_urp -= todrop;
		else {
			thflags &= ~TH_URG;
			th->th_urp = 0;
		}
	}
	/*
	 * If segment ends after window, drop trailing data (and PUSH and
	 * FIN); if nothing left, just ACK.
	 */
	todrop = (th->th_seq + tlen) - (tp->rcv_nxt + tp->rcv_wnd);
	if (todrop > 0) {
		FUNC1(tcps_rcvpackafterwin);
		if (todrop >= tlen) {
			FUNC0(tcps_rcvbyteafterwin, tlen);
			/*
			 * If window is closed can only take segments at
			 * window edge, and have to drop data and PUSH from
			 * incoming segments.  Continue processing, but
			 * remember to ack.  Otherwise, drop segment and
			 * ack.
			 */
			if (tp->rcv_wnd == 0 && th->th_seq == tp->rcv_nxt) {
				tp->t_flags |= TF_ACKNOW;
				FUNC1(tcps_rcvwinprobe);
			} else {
				FUNC2(m, tp, th, thflags, tlen, ret_val);
				return (1);
			}
		} else
			FUNC0(tcps_rcvbyteafterwin, todrop);
		FUNC3(m, -todrop);
		tlen -= todrop;
		thflags &= ~(TH_PUSH | TH_FIN);
	}
	*thf = thflags;
	*tlenp = tlen;
	return (0);
}