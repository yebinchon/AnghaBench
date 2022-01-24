#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u_short ;
struct tcptw {int rcv_nxt; int /*<<< orphan*/  tw_cred; int /*<<< orphan*/  tw_so_options; scalar_t__ tw_time; int /*<<< orphan*/  t_starttime; int /*<<< orphan*/  irs; int /*<<< orphan*/  iss; int /*<<< orphan*/  snd_nxt; scalar_t__ ts_offset; scalar_t__ t_recent; scalar_t__ last_win; struct inpcb* tw_inpcb; } ;
struct tcpcb {long rcv_scale; int t_maxseg; int rcv_adv; int rcv_nxt; int t_flags; int /*<<< orphan*/  t_starttime; int /*<<< orphan*/  irs; int /*<<< orphan*/  iss; int /*<<< orphan*/  snd_nxt; scalar_t__ ts_offset; scalar_t__ ts_recent; struct inpcb* t_inpcb; } ;
struct TYPE_4__ {int sb_hiwat; } ;
struct socket {int so_state; int /*<<< orphan*/  so_cred; int /*<<< orphan*/  so_options; TYPE_2__ so_rcv; } ;
struct TYPE_3__ {int inc_flags; } ;
struct inpcb {int inp_flags; struct tcptw* inp_ppcb; struct socket* inp_socket; int /*<<< orphan*/  inp_faddr; int /*<<< orphan*/  in6p_faddr; TYPE_1__ inp_inc; } ;

/* Variables and functions */
 int INC_ISIPV6 ; 
 int INP_DROPPED ; 
 int INP_SOCKREF ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int SS_PROTOREF ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPS_TIME_WAIT ; 
 scalar_t__ TCP_MAXWIN ; 
 int TF_ACKNOW ; 
 int TF_NOOPT ; 
 int TF_RCVD_TSTMP ; 
 int TF_REQ_TSTMP ; 
 int /*<<< orphan*/  TH_ACK ; 
 scalar_t__ V_nolocaltimewait ; 
 int /*<<< orphan*/  V_tcptw_zone ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*) ; 
 int /*<<< orphan*/  FUNC16 (struct socket*) ; 
 struct tcpcb* FUNC17 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC18 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC19 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tcptw*,int /*<<< orphan*/ ) ; 
 struct tcptw* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct tcptw*,int /*<<< orphan*/ ) ; 
 struct tcptw* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC24(struct tcpcb *tp)
{
	struct tcptw twlocal, *tw;
	struct inpcb *inp = tp->t_inpcb;
	struct socket *so;
	uint32_t recwin;
	bool acknow, local;
#ifdef INET6
	bool isipv6 = inp->inp_inc.inc_flags & INC_ISIPV6;
#endif

	FUNC3();
	FUNC0(inp);

	/* A dropped inp should never transition to TIME_WAIT state. */
	FUNC2((inp->inp_flags & INP_DROPPED) == 0, ("tcp_twstart: "
	    "(inp->inp_flags & INP_DROPPED) != 0"));

	if (V_nolocaltimewait) {
#ifdef INET6
		if (isipv6)
			local = in6_localaddr(&inp->in6p_faddr);
		else
#endif
#ifdef INET
			local = in_localip(inp->inp_faddr);
#else
			local = false;
#endif
	} else
		local = false;

	/*
	 * For use only by DTrace.  We do not reference the state
	 * after this point so modifying it in place is not a problem.
	 */
	FUNC19(tp, TCPS_TIME_WAIT);

	if (local)
		tw = &twlocal;
	else
		tw = FUNC23(V_tcptw_zone, M_NOWAIT);
	if (tw == NULL) {
		/*
		 * Reached limit on total number of TIMEWAIT connections
		 * allowed. Remove a connection from TIMEWAIT queue in LRU
		 * fashion to make room for this connection.
		 *
		 * XXX:  Check if it possible to always have enough room
		 * in advance based on guarantees provided by uma_zalloc().
		 */
		tw = FUNC21(1);
		if (tw == NULL) {
			tp = FUNC17(tp);
			if (tp != NULL)
				FUNC1(inp);
			return;
		}
	}
	/*
	 * For !local case the tcptw will hold a reference on its inpcb
	 * until tcp_twclose is called.
	 */
	tw->tw_inpcb = inp;

	/*
	 * Recover last window size sent.
	 */
	so = inp->inp_socket;
	recwin = FUNC13(FUNC12(FUNC14(&so->so_rcv), 0),
	    (long)TCP_MAXWIN << tp->rcv_scale);
	if (recwin < (so->so_rcv.sb_hiwat / 4) &&
	    recwin < tp->t_maxseg)
		recwin = 0;
	if (FUNC4(tp->rcv_adv, tp->rcv_nxt) &&
	    recwin < (tp->rcv_adv - tp->rcv_nxt))
		recwin = (tp->rcv_adv - tp->rcv_nxt);
	tw->last_win = (u_short)(recwin >> tp->rcv_scale);

	/*
	 * Set t_recent if timestamps are used on the connection.
	 */
	if ((tp->t_flags & (TF_REQ_TSTMP|TF_RCVD_TSTMP|TF_NOOPT)) ==
	    (TF_REQ_TSTMP|TF_RCVD_TSTMP)) {
		tw->t_recent = tp->ts_recent;
		tw->ts_offset = tp->ts_offset;
	} else {
		tw->t_recent = 0;
		tw->ts_offset = 0;
	}

	tw->snd_nxt = tp->snd_nxt;
	tw->rcv_nxt = tp->rcv_nxt;
	tw->iss     = tp->iss;
	tw->irs     = tp->irs;
	tw->t_starttime = tp->t_starttime;
	tw->tw_time = 0;

/* XXX
 * If this code will
 * be used for fin-wait-2 state also, then we may need
 * a ts_recent from the last segment.
 */
	acknow = tp->t_flags & TF_ACKNOW;

	/*
	 * First, discard tcpcb state, which includes stopping its timers and
	 * freeing it.  tcp_discardcb() used to also release the inpcb, but
	 * that work is now done in the caller.
	 *
	 * Note: soisdisconnected() call used to be made in tcp_discardcb(),
	 * and might not be needed here any longer.
	 */
	FUNC18(tp);
	FUNC16(so);
	tw->tw_so_options = so->so_options;
	inp->inp_flags |= INP_TIMEWAIT;
	if (acknow)
		FUNC22(tw, TH_ACK);
	if (local)
		FUNC10(inp);
	else {
		FUNC11(inp);	/* Reference from tw */
		tw->tw_cred = FUNC7(so->so_cred);
		inp->inp_ppcb = tw;
		FUNC6(TCPS_TIME_WAIT);
		FUNC20(tw, 0);
	}

	/*
	 * If the inpcb owns the sole reference to the socket, then we can
	 * detach and free the socket as it is not needed in time wait.
	 */
	if (inp->inp_flags & INP_SOCKREF) {
		FUNC2(so->so_state & SS_PROTOREF,
		    ("tcp_twstart: !SS_PROTOREF"));
		inp->inp_flags &= ~INP_SOCKREF;
		FUNC1(inp);
		FUNC5(so);
		so->so_state &= ~SS_PROTOREF;
		FUNC15(so);
	} else
		FUNC1(inp);
}