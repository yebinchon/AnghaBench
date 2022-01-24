#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct sctp_association {int state; int /*<<< orphan*/  sent_queue; int /*<<< orphan*/  send_queue; int /*<<< orphan*/  time_entered; int /*<<< orphan*/  refcnt; TYPE_2__* control_pdapi; struct sctp_stream_in* strmin; } ;
struct sctp_tcb {int /*<<< orphan*/  sctp_ep; scalar_t__ sctp_socket; struct sctp_association asoc; } ;
struct sctp_stream_in {int /*<<< orphan*/  inqueue; int /*<<< orphan*/  uno_inqueue; } ;
struct TYPE_4__ {int /*<<< orphan*/  chunk_length; } ;
struct sctp_shutdown_chunk {TYPE_1__ ch; } ;
struct sctp_nets {int dummy; } ;
struct TYPE_5__ {scalar_t__ on_strm_q; size_t sinfo_stream; int end_added; int pdapi_aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SCTP_DEBUG_INPUT2 ; 
 scalar_t__ SCTP_FROM_SCTP_INPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct socket* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_LOC_9 ; 
 int /*<<< orphan*/  SCTP_NOTIFY_PEER_SHUTDOWN ; 
 scalar_t__ SCTP_ON_ORDERED ; 
 scalar_t__ SCTP_ON_UNORDERED ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_tcb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 int SCTP_STATE_CLOSED_SOCKET ; 
 int SCTP_STATE_COOKIE_ECHOED ; 
 int SCTP_STATE_COOKIE_WAIT ; 
 int SCTP_STATE_OPEN ; 
 int SCTP_STATE_SHUTDOWN_ACK_SENT ; 
 int SCTP_STATE_SHUTDOWN_RECEIVED ; 
 int SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWNACK ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  next_instrm ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,TYPE_2__*,scalar_t__) ; 
 int FUNC18 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,struct sctp_nets*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct sctp_tcb*,struct sctp_shutdown_chunk*,int*) ; 
 int /*<<< orphan*/  sctps_currestab ; 

__attribute__((used)) static void
FUNC26(struct sctp_shutdown_chunk *cp,
    struct sctp_tcb *stcb, struct sctp_nets *net, int *abort_flag)
{
	struct sctp_association *asoc;
	int some_on_streamwheel;
	int old_state;
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
	struct socket *so;
#endif

	FUNC0(SCTP_DEBUG_INPUT2,
	    "sctp_handle_shutdown: handling SHUTDOWN\n");
	if (stcb == NULL)
		return;
	asoc = &stcb->asoc;
	if ((FUNC2(stcb) == SCTP_STATE_COOKIE_WAIT) ||
	    (FUNC2(stcb) == SCTP_STATE_COOKIE_ECHOED)) {
		return;
	}
	if (FUNC16(cp->ch.chunk_length) != sizeof(struct sctp_shutdown_chunk)) {
		/* Shutdown NOT the expected size */
		return;
	}
	old_state = FUNC2(stcb);
	FUNC25(stcb, cp, abort_flag);
	if (*abort_flag) {
		return;
	}
	if (asoc->control_pdapi) {
		/*
		 * With a normal shutdown we assume the end of last record.
		 */
		FUNC3(stcb->sctp_ep);
		if (asoc->control_pdapi->on_strm_q) {
			struct sctp_stream_in *strm;

			strm = &asoc->strmin[asoc->control_pdapi->sinfo_stream];
			if (asoc->control_pdapi->on_strm_q == SCTP_ON_UNORDERED) {
				/* Unordered */
				FUNC13(&strm->uno_inqueue, asoc->control_pdapi, next_instrm);
				asoc->control_pdapi->on_strm_q = 0;
			} else if (asoc->control_pdapi->on_strm_q == SCTP_ON_ORDERED) {
				/* Ordered */
				FUNC13(&strm->inqueue, asoc->control_pdapi, next_instrm);
				asoc->control_pdapi->on_strm_q = 0;
#ifdef INVARIANTS
			} else {
				panic("Unknown state on ctrl:%p on_strm_q:%d",
				    asoc->control_pdapi,
				    asoc->control_pdapi->on_strm_q);
#endif
			}
		}
		asoc->control_pdapi->end_added = 1;
		asoc->control_pdapi->pdapi_aborted = 1;
		asoc->control_pdapi = NULL;
		FUNC4(stcb->sctp_ep);
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
		so = SCTP_INP_SO(stcb->sctp_ep);
		atomic_add_int(&stcb->asoc.refcnt, 1);
		SCTP_TCB_UNLOCK(stcb);
		SCTP_SOCKET_LOCK(so, 1);
		SCTP_TCB_LOCK(stcb);
		atomic_subtract_int(&stcb->asoc.refcnt, 1);
		if (stcb->asoc.state & SCTP_STATE_CLOSED_SOCKET) {
			/* assoc was freed while we were unlocked */
			SCTP_SOCKET_UNLOCK(so, 1);
			return;
		}
#endif
		if (stcb->sctp_socket) {
			FUNC20(stcb->sctp_ep, stcb->sctp_socket);
		}
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
		SCTP_SOCKET_UNLOCK(so, 1);
#endif
	}
	/* goto SHUTDOWN_RECEIVED state to block new requests */
	if (stcb->sctp_socket) {
		if ((FUNC2(stcb) != SCTP_STATE_SHUTDOWN_RECEIVED) &&
		    (FUNC2(stcb) != SCTP_STATE_SHUTDOWN_ACK_SENT) &&
		    (FUNC2(stcb) != SCTP_STATE_SHUTDOWN_SENT)) {
			FUNC6(stcb, SCTP_STATE_SHUTDOWN_RECEIVED);
			/*
			 * notify upper layer that peer has initiated a
			 * shutdown
			 */
			FUNC24(SCTP_NOTIFY_PEER_SHUTDOWN, stcb, 0, NULL, SCTP_SO_NOT_LOCKED);

			/* reset time */
			(void)FUNC1(&asoc->time_entered);
		}
	}
	if (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_SENT) {
		/*
		 * stop the shutdown timer, since we WILL move to
		 * SHUTDOWN-ACK-SENT.
		 */
		FUNC23(SCTP_TIMER_TYPE_SHUTDOWN, stcb->sctp_ep, stcb,
		    net, SCTP_FROM_SCTP_INPUT + SCTP_LOC_9);
	}
	/* Now is there unsent data on a stream somewhere? */
	some_on_streamwheel = FUNC18(stcb, SCTP_SO_NOT_LOCKED);

	if (!FUNC12(&asoc->send_queue) ||
	    !FUNC12(&asoc->sent_queue) ||
	    some_on_streamwheel) {
		/* By returning we will push more data out */
		return;
	} else {
		/* no outstanding data to send, so move on... */
		/* send SHUTDOWN-ACK */
		/* move to SHUTDOWN-ACK-SENT state */
		if ((FUNC2(stcb) == SCTP_STATE_OPEN) ||
		    (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
			FUNC9(sctps_currestab);
		}
		if (FUNC2(stcb) != SCTP_STATE_SHUTDOWN_ACK_SENT) {
			FUNC6(stcb, SCTP_STATE_SHUTDOWN_ACK_SENT);
			FUNC21(stcb);
			FUNC19(stcb, net);
			FUNC22(SCTP_TIMER_TYPE_SHUTDOWNACK,
			    stcb->sctp_ep, stcb, net);
		} else if (old_state == SCTP_STATE_SHUTDOWN_ACK_SENT) {
			FUNC19(stcb, net);
		}
	}
}