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
typedef  int /*<<< orphan*/  uint8_t ;
struct vnet {int dummy; } ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct socket {int dummy; } ;
struct sctp_tmit_chunk {struct sctp_nets* whoTo; } ;
struct sctp_timer {int type; void* self; int stopped_from; int /*<<< orphan*/  timer; scalar_t__ vnet; scalar_t__ net; scalar_t__ tcb; scalar_t__ ep; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  timoshutdownack; int /*<<< orphan*/  timocookie; int /*<<< orphan*/  timoheartbeat; int /*<<< orphan*/  timoshutdown; int /*<<< orphan*/  timosack; int /*<<< orphan*/  timoinit; int /*<<< orphan*/  sent_queue; int /*<<< orphan*/  sent_queue_cnt; int /*<<< orphan*/  num_send_timers_up; int /*<<< orphan*/  timodata; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_nets {int dest_state; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** secret_key; scalar_t__ current_secret_number; scalar_t__ last_secret_number; int /*<<< orphan*/  time_of_secret_change; } ;
struct sctp_inpcb {TYPE_1__ sctp_ep; int /*<<< orphan*/ * sctp_socket; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int SCTP_ADDR_NOHB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CALLED_FROM_INPKILL_TIMER ; 
 int /*<<< orphan*/  SCTP_DEBUG_TIMER1 ; 
 int /*<<< orphan*/  SCTP_FREE_SHOULD_USE_ABORT ; 
 scalar_t__ SCTP_FROM_SCTPUTIL ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 scalar_t__ SCTP_HOW_MANY_SECRETS ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_inpcb*) ; 
 struct socket* FUNC7 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ SCTP_LOC_1 ; 
 scalar_t__ SCTP_LOC_2 ; 
 scalar_t__ SCTP_LOC_3 ; 
 int /*<<< orphan*/  SCTP_NORMAL_PROC ; 
 int SCTP_NUMBER_OF_SECRETS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_ASCONF_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_AUTOCLOSE_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_HB_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_SACK_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_SHUT_ACK_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_SHUT_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_STRRST_TMR ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_T3 ; 
 int /*<<< orphan*/  FUNC14 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*,int) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 int SCTP_STATE_ABOUT_TO_BE_FREED ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC18 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC19 (struct sctp_tcb*) ; 
#define  SCTP_TIMER_TYPE_ADDR_WQ 144 
#define  SCTP_TIMER_TYPE_ASCONF 143 
#define  SCTP_TIMER_TYPE_ASOCKILL 142 
#define  SCTP_TIMER_TYPE_AUTOCLOSE 141 
#define  SCTP_TIMER_TYPE_COOKIE 140 
#define  SCTP_TIMER_TYPE_HEARTBEAT 139 
#define  SCTP_TIMER_TYPE_INIT 138 
#define  SCTP_TIMER_TYPE_INPKILL 137 
#define  SCTP_TIMER_TYPE_NEWCOOKIE 136 
#define  SCTP_TIMER_TYPE_PATHMTURAISE 135 
#define  SCTP_TIMER_TYPE_PRIM_DELETED 134 
#define  SCTP_TIMER_TYPE_RECV 133 
#define  SCTP_TIMER_TYPE_SEND 132 
#define  SCTP_TIMER_TYPE_SHUTDOWN 131 
#define  SCTP_TIMER_TYPE_SHUTDOWNACK 130 
#define  SCTP_TIMER_TYPE_SHUTDOWNGUARD 129 
#define  SCTP_TIMER_TYPE_STRRESET 128 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 struct sctp_tmit_chunk* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sctp_inpcb*,struct sctp_tcb*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC27 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC29 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC30 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC32 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  sctp_diag_info_code ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC34 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mbuf* FUNC35 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC38 (struct sctp_inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC41 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC43 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC44 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC45 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC46 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC47 (int const,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC48 (int const,struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  sctps_timoasconf ; 
 int /*<<< orphan*/  sctps_timoassockill ; 
 int /*<<< orphan*/  sctps_timoautoclose ; 
 int /*<<< orphan*/  sctps_timocookie ; 
 int /*<<< orphan*/  sctps_timodata ; 
 int /*<<< orphan*/  sctps_timodelprim ; 
 int /*<<< orphan*/  sctps_timoheartbeat ; 
 int /*<<< orphan*/  sctps_timoinit ; 
 int /*<<< orphan*/  sctps_timoinpkill ; 
 int /*<<< orphan*/  sctps_timopathmtu ; 
 int /*<<< orphan*/  sctps_timosack ; 
 int /*<<< orphan*/  sctps_timosecret ; 
 int /*<<< orphan*/  sctps_timoshutdown ; 
 int /*<<< orphan*/  sctps_timoshutdownack ; 
 int /*<<< orphan*/  sctps_timoshutdownguard ; 
 int /*<<< orphan*/  sctps_timostrmrst ; 

void
FUNC49(void *t)
{
	struct sctp_inpcb *inp;
	struct sctp_tcb *stcb;
	struct sctp_nets *net;
	struct sctp_timer *tmr;
	struct mbuf *op_err;
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
	struct socket *so;
#endif
	int did_output;
	int type;

	tmr = (struct sctp_timer *)t;
	inp = (struct sctp_inpcb *)tmr->ep;
	stcb = (struct sctp_tcb *)tmr->tcb;
	net = (struct sctp_nets *)tmr->net;
	FUNC1((struct vnet *)tmr->vnet);
	did_output = 1;

#ifdef SCTP_AUDITING_ENABLED
	sctp_audit_log(0xF0, (uint8_t)tmr->type);
	sctp_auditing(3, inp, stcb, net);
#endif

	/* sanity checks... */
	if (tmr->self != (void *)tmr) {
		/*
		 * SCTP_PRINTF("Stale SCTP timer fired (%p), ignoring...\n",
		 * (void *)tmr);
		 */
		FUNC0();
		return;
	}
	tmr->stopped_from = 0xa001;
	if (!FUNC10(tmr->type)) {
		/*
		 * SCTP_PRINTF("SCTP timer fired with invalid type: 0x%x\n",
		 * tmr->type);
		 */
		FUNC0();
		return;
	}
	tmr->stopped_from = 0xa002;
	if ((tmr->type != SCTP_TIMER_TYPE_ADDR_WQ) && (inp == NULL)) {
		FUNC0();
		return;
	}
	/* if this is an iterator timeout, get the struct and clear inp */
	tmr->stopped_from = 0xa003;
	if (inp) {
		FUNC6(inp);
		if ((inp->sctp_socket == NULL) &&
		    ((tmr->type != SCTP_TIMER_TYPE_INPKILL) &&
		    (tmr->type != SCTP_TIMER_TYPE_INIT) &&
		    (tmr->type != SCTP_TIMER_TYPE_SEND) &&
		    (tmr->type != SCTP_TIMER_TYPE_RECV) &&
		    (tmr->type != SCTP_TIMER_TYPE_HEARTBEAT) &&
		    (tmr->type != SCTP_TIMER_TYPE_SHUTDOWN) &&
		    (tmr->type != SCTP_TIMER_TYPE_SHUTDOWNACK) &&
		    (tmr->type != SCTP_TIMER_TYPE_SHUTDOWNGUARD) &&
		    (tmr->type != SCTP_TIMER_TYPE_ASOCKILL))) {
			FUNC5(inp);
			FUNC0();
			return;
		}
	}
	tmr->stopped_from = 0xa004;
	if (stcb) {
		FUNC23(&stcb->asoc.refcnt, 1);
		if (stcb->asoc.state == 0) {
			FUNC23(&stcb->asoc.refcnt, -1);
			if (inp) {
				FUNC5(inp);
			}
			FUNC0();
			return;
		}
	}
	type = tmr->type;
	tmr->stopped_from = 0xa005;
	FUNC2(SCTP_DEBUG_TIMER1, "Timer type %d goes off\n", type);
	if (!FUNC11(&tmr->timer)) {
		if (inp) {
			FUNC5(inp);
		}
		if (stcb) {
			FUNC23(&stcb->asoc.refcnt, -1);
		}
		FUNC0();
		return;
	}
	tmr->stopped_from = 0xa006;

	if (stcb) {
		FUNC17(stcb);
		FUNC23(&stcb->asoc.refcnt, -1);
		if ((type != SCTP_TIMER_TYPE_ASOCKILL) &&
		    ((stcb->asoc.state == 0) ||
		    (stcb->asoc.state & SCTP_STATE_ABOUT_TO_BE_FREED))) {
			FUNC19(stcb);
			if (inp) {
				FUNC5(inp);
			}
			FUNC0();
			return;
		}
	} else if (inp != NULL) {
		if (type != SCTP_TIMER_TYPE_INPKILL) {
			FUNC8(inp);
		}
	} else {
		FUNC20();
	}
	/* record in stopped what t-o occurred */
	tmr->stopped_from = type;

	/* mark as being serviced now */
	if (FUNC13(&tmr->timer)) {
		/*
		 * Callout has been rescheduled.
		 */
		goto get_out;
	}
	if (!FUNC11(&tmr->timer)) {
		/*
		 * Not active, so no action.
		 */
		goto get_out;
	}
	FUNC12(&tmr->timer);

	/* call the handler for the appropriate timer type */
	switch (type) {
	case SCTP_TIMER_TYPE_ADDR_WQ:
		FUNC36();
		break;
	case SCTP_TIMER_TYPE_SEND:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timodata);
		stcb->asoc.timodata++;
		stcb->asoc.num_send_timers_up--;
		if (stcb->asoc.num_send_timers_up < 0) {
			stcb->asoc.num_send_timers_up = 0;
		}
		FUNC18(stcb);
		if (FUNC46(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */

			goto out_decr;
		}
		FUNC18(stcb);
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_NOT_LOCKED);
		if ((stcb->asoc.num_send_timers_up == 0) &&
		    (stcb->asoc.sent_queue_cnt > 0)) {
			struct sctp_tmit_chunk *chk;

			/*
			 * safeguard. If there on some on the sent queue
			 * somewhere but no timers running something is
			 * wrong... so we start a timer on the first chunk
			 * on the send queue on whatever net it is sent to.
			 */
			chk = FUNC22(&stcb->asoc.sent_queue);
			FUNC47(SCTP_TIMER_TYPE_SEND, inp, stcb,
			    chk->whoTo);
		}
		break;
	case SCTP_TIMER_TYPE_INIT:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timoinit);
		stcb->asoc.timoinit++;
		if (FUNC45(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
		/* We do output but not here */
		did_output = 0;
		break;
	case SCTP_TIMER_TYPE_RECV:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timosack);
		stcb->asoc.timosack++;
		FUNC41(stcb, SCTP_SO_NOT_LOCKED);
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_SACK_TMR, SCTP_SO_NOT_LOCKED);
		break;
	case SCTP_TIMER_TYPE_SHUTDOWN:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		if (FUNC42(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
		FUNC16(sctps_timoshutdown);
		stcb->asoc.timoshutdown++;
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_SHUT_TMR, SCTP_SO_NOT_LOCKED);
		break;
	case SCTP_TIMER_TYPE_HEARTBEAT:
		if ((stcb == NULL) || (inp == NULL) || (net == NULL)) {
			break;
		}
		FUNC16(sctps_timoheartbeat);
		stcb->asoc.timoheartbeat++;
		if (FUNC37(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		if (!(net->dest_state & SCTP_ADDR_NOHB)) {
			FUNC47(SCTP_TIMER_TYPE_HEARTBEAT, inp, stcb, net);
			FUNC30(inp, stcb, SCTP_OUTPUT_FROM_HB_TMR, SCTP_SO_NOT_LOCKED);
		}
		break;
	case SCTP_TIMER_TYPE_COOKIE:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}

		if (FUNC31(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
		FUNC16(sctps_timocookie);
		stcb->asoc.timocookie++;
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		/*
		 * We consider T3 and Cookie timer pretty much the same with
		 * respect to where from in chunk_output.
		 */
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_NOT_LOCKED);
		break;
	case SCTP_TIMER_TYPE_NEWCOOKIE:
		{
			struct timeval tv;
			int i, secret;

			if (inp == NULL) {
				break;
			}
			FUNC16(sctps_timosecret);
			(void)FUNC4(&tv);
			inp->sctp_ep.time_of_secret_change = tv.tv_sec;
			inp->sctp_ep.last_secret_number =
			    inp->sctp_ep.current_secret_number;
			inp->sctp_ep.current_secret_number++;
			if (inp->sctp_ep.current_secret_number >=
			    SCTP_HOW_MANY_SECRETS) {
				inp->sctp_ep.current_secret_number = 0;
			}
			secret = (int)inp->sctp_ep.current_secret_number;
			for (i = 0; i < SCTP_NUMBER_OF_SECRETS; i++) {
				inp->sctp_ep.secret_key[secret][i] =
				    FUNC40(&inp->sctp_ep);
			}
			FUNC47(SCTP_TIMER_TYPE_NEWCOOKIE, inp, stcb, net);
		}
		did_output = 0;
		break;
	case SCTP_TIMER_TYPE_PATHMTURAISE:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timopathmtu);
		FUNC39(inp, stcb, net);
		did_output = 0;
		break;
	case SCTP_TIMER_TYPE_SHUTDOWNACK:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		if (FUNC43(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
		FUNC16(sctps_timoshutdownack);
		stcb->asoc.timoshutdownack++;
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_SHUT_ACK_TMR, SCTP_SO_NOT_LOCKED);
		break;
	case SCTP_TIMER_TYPE_SHUTDOWNGUARD:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timoshutdownguard);
		op_err = FUNC35(FUNC3(sctp_diag_info_code),
		    "Shutdown guard timer expired");
		FUNC25(inp, stcb, op_err, SCTP_SO_NOT_LOCKED);
		/* no need to unlock on tcb its gone */
		goto out_decr;

	case SCTP_TIMER_TYPE_STRRESET:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		if (FUNC44(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
		FUNC16(sctps_timostrmrst);
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_STRRST_TMR, SCTP_SO_NOT_LOCKED);
		break;
	case SCTP_TIMER_TYPE_ASCONF:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		if (FUNC26(inp, stcb, net)) {
			/* no need to unlock on tcb its gone */
			goto out_decr;
		}
		FUNC16(sctps_timoasconf);
#ifdef SCTP_AUDITING_ENABLED
		sctp_auditing(4, inp, stcb, net);
#endif
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_ASCONF_TMR, SCTP_SO_NOT_LOCKED);
		break;
	case SCTP_TIMER_TYPE_PRIM_DELETED:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC32(inp, stcb, net);
		FUNC16(sctps_timodelprim);
		break;

	case SCTP_TIMER_TYPE_AUTOCLOSE:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timoautoclose);
		FUNC29(inp, stcb, net);
		FUNC30(inp, stcb, SCTP_OUTPUT_FROM_AUTOCLOSE_TMR, SCTP_SO_NOT_LOCKED);
		did_output = 0;
		break;
	case SCTP_TIMER_TYPE_ASOCKILL:
		if ((stcb == NULL) || (inp == NULL)) {
			break;
		}
		FUNC16(sctps_timoassockill);
		/* Can we free it yet? */
		FUNC5(inp);
		FUNC48(SCTP_TIMER_TYPE_ASOCKILL, inp, stcb, NULL,
		    SCTP_FROM_SCTPUTIL + SCTP_LOC_1);
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
		so = SCTP_INP_SO(inp);
		atomic_add_int(&stcb->asoc.refcnt, 1);
		SCTP_TCB_UNLOCK(stcb);
		SCTP_SOCKET_LOCK(so, 1);
		SCTP_TCB_LOCK(stcb);
		atomic_subtract_int(&stcb->asoc.refcnt, 1);
#endif
		(void)FUNC34(inp, stcb, SCTP_NORMAL_PROC,
		    SCTP_FROM_SCTPUTIL + SCTP_LOC_2);
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
		SCTP_SOCKET_UNLOCK(so, 1);
#endif
		/*
		 * free asoc, always unlocks (or destroy's) so prevent
		 * duplicate unlock or unlock of a free mtx :-0
		 */
		stcb = NULL;
		goto out_no_decr;
	case SCTP_TIMER_TYPE_INPKILL:
		FUNC16(sctps_timoinpkill);
		if (inp == NULL) {
			break;
		}
		/*
		 * special case, take away our increment since WE are the
		 * killer
		 */
		FUNC5(inp);
		FUNC48(SCTP_TIMER_TYPE_INPKILL, inp, NULL, NULL,
		    SCTP_FROM_SCTPUTIL + SCTP_LOC_3);
		FUNC38(inp, SCTP_FREE_SHOULD_USE_ABORT,
		    SCTP_CALLED_FROM_INPKILL_TIMER);
		inp = NULL;
		goto out_no_decr;
	default:
		FUNC2(SCTP_DEBUG_TIMER1, "sctp_timeout_handler:unknown timer %d\n",
		    type);
		break;
	}
#ifdef SCTP_AUDITING_ENABLED
	sctp_audit_log(0xF1, (uint8_t)type);
	if (inp)
		sctp_auditing(5, inp, stcb, net);
#endif
	if ((did_output) && stcb) {
		/*
		 * Now we need to clean up the control chunk chain if an
		 * ECNE is on it. It must be marked as UNSENT again so next
		 * call will continue to send it until such time that we get
		 * a CWR, to remove it. It is, however, less likely that we
		 * will find a ecn echo on the chain though.
		 */
		FUNC33(&stcb->asoc);
	}
get_out:
	if (stcb) {
		FUNC19(stcb);
	} else if (inp != NULL) {
		FUNC9(inp);
	} else {
		FUNC21();
	}

out_decr:
	if (inp) {
		FUNC5(inp);
	}

out_no_decr:
	FUNC2(SCTP_DEBUG_TIMER1, "Timer now complete (type = %d)\n", type);
	FUNC0();
}