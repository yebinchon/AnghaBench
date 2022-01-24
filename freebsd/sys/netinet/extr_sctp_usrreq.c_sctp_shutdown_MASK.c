#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sb_state; } ;
struct socket {int so_state; TYPE_4__ so_rcv; scalar_t__ so_pcb; } ;
struct TYPE_6__ {scalar_t__ (* sctp_ss_is_user_msgs_incomplete ) (struct sctp_tcb*,struct sctp_association*) ;} ;
struct sctp_association {int state; scalar_t__ stream_queue_cnt; int /*<<< orphan*/  sent_queue; int /*<<< orphan*/  send_queue; TYPE_1__ ss_functions; struct sctp_nets* primary_destination; struct sctp_nets* alternate; } ;
struct sctp_tcb {TYPE_2__* sctp_ep; struct sctp_association asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int sctp_flags; int /*<<< orphan*/  sctp_asoc_list; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {scalar_t__ last_abort_code; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 struct sctp_tcb* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SBS_CANTRCVMORE ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*,int) ; 
 int /*<<< orphan*/  SCTP_CAUSE_USER_INITIATED_ABT ; 
 scalar_t__ SCTP_FROM_SCTP_USRREQ ; 
 scalar_t__ FUNC2 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_inpcb*) ; 
 scalar_t__ SCTP_LOC_6 ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_CLOSING ; 
 int SCTP_PCB_FLAGS_IN_TCPPOOL ; 
 int SCTP_PCB_FLAGS_TCPTYPE ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_SO_LOCKED ; 
 int SCTP_STATE_ABOUT_TO_BE_FREED ; 
 scalar_t__ SCTP_STATE_COOKIE_ECHOED ; 
 scalar_t__ SCTP_STATE_COOKIE_WAIT ; 
 scalar_t__ SCTP_STATE_OPEN ; 
 int SCTP_STATE_PARTIAL_MSG_LEFT ; 
 int SCTP_STATE_SHUTDOWN_PENDING ; 
 int /*<<< orphan*/  SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWNGUARD ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int SS_ISDISCONNECTING ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct sctp_tcb*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_2__*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  sctps_currestab ; 
 int /*<<< orphan*/  FUNC19 (struct socket*) ; 
 scalar_t__ FUNC20 (struct sctp_tcb*,struct sctp_association*) ; 
 scalar_t__ FUNC21 (struct sctp_tcb*,struct sctp_association*) ; 

int
FUNC22(struct socket *so)
{
	struct sctp_inpcb *inp;

	inp = (struct sctp_inpcb *)so->so_pcb;
	if (inp == NULL) {
		FUNC5(inp, NULL, NULL, SCTP_FROM_SCTP_USRREQ, EINVAL);
		return (EINVAL);
	}
	FUNC3(inp);
	/* For UDP model this is a invalid call */
	if (!((inp->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) ||
	    (inp->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL))) {
		/* Restore the flags that the soshutdown took away. */
		FUNC10(&so->so_rcv);
		so->so_rcv.sb_state &= ~SBS_CANTRCVMORE;
		FUNC11(&so->so_rcv);
		/* This proc will wakeup for read and do nothing (I hope) */
		FUNC4(inp);
		FUNC5(inp, NULL, NULL, SCTP_FROM_SCTP_USRREQ, EOPNOTSUPP);
		return (EOPNOTSUPP);
	} else {
		/*
		 * Ok, if we reach here its the TCP model and it is either a
		 * SHUT_WR or SHUT_RDWR. This means we put the shutdown flag
		 * against it.
		 */
		struct sctp_tcb *stcb;
		struct sctp_association *asoc;
		struct sctp_nets *netp;

		if ((so->so_state &
		    (SS_ISCONNECTED | SS_ISCONNECTING | SS_ISDISCONNECTING)) == 0) {
			FUNC4(inp);
			return (ENOTCONN);
		}
		FUNC19(so);

		stcb = FUNC0(&inp->sctp_asoc_list);
		if (stcb == NULL) {
			/*
			 * Ok, we hit the case that the shutdown call was
			 * made after an abort or something. Nothing to do
			 * now.
			 */
			FUNC4(inp);
			return (0);
		}
		FUNC8(stcb);
		asoc = &stcb->asoc;
		if (asoc->state & SCTP_STATE_ABOUT_TO_BE_FREED) {
			FUNC9(stcb);
			FUNC4(inp);
			return (0);
		}
		if ((FUNC2(stcb) != SCTP_STATE_COOKIE_WAIT) &&
		    (FUNC2(stcb) != SCTP_STATE_COOKIE_ECHOED) &&
		    (FUNC2(stcb) != SCTP_STATE_OPEN)) {
			/*
			 * If we are not in or before ESTABLISHED, there is
			 * no protocol action required.
			 */
			FUNC9(stcb);
			FUNC4(inp);
			return (0);
		}
		if (stcb->asoc.alternate) {
			netp = stcb->asoc.alternate;
		} else {
			netp = stcb->asoc.primary_destination;
		}
		if ((FUNC2(stcb) == SCTP_STATE_OPEN) &&
		    FUNC12(&asoc->send_queue) &&
		    FUNC12(&asoc->sent_queue) &&
		    (asoc->stream_queue_cnt == 0)) {
			if ((*asoc->ss_functions.sctp_ss_is_user_msgs_incomplete) (stcb, asoc)) {
				goto abort_anyway;
			}
			/* there is nothing queued to send, so I'm done... */
			FUNC7(sctps_currestab);
			FUNC6(stcb, SCTP_STATE_SHUTDOWN_SENT);
			FUNC17(stcb);
			FUNC16(stcb, netp);
			FUNC18(SCTP_TIMER_TYPE_SHUTDOWN,
			    stcb->sctp_ep, stcb, netp);
		} else {
			/*
			 * We still got (or just got) data to send, so set
			 * SHUTDOWN_PENDING.
			 */
			FUNC1(stcb, SCTP_STATE_SHUTDOWN_PENDING);
			if ((*asoc->ss_functions.sctp_ss_is_user_msgs_incomplete) (stcb, asoc)) {
				FUNC1(stcb, SCTP_STATE_PARTIAL_MSG_LEFT);
			}
			if (FUNC12(&asoc->send_queue) &&
			    FUNC12(&asoc->sent_queue) &&
			    (asoc->state & SCTP_STATE_PARTIAL_MSG_LEFT)) {
				struct mbuf *op_err;

		abort_anyway:
				op_err = FUNC15(SCTP_CAUSE_USER_INITIATED_ABT, "");
				stcb->sctp_ep->last_abort_code = SCTP_FROM_SCTP_USRREQ + SCTP_LOC_6;
				FUNC4(inp);
				FUNC13(stcb->sctp_ep, stcb,
				    op_err, SCTP_SO_LOCKED);
				return (0);
			}
		}
		FUNC18(SCTP_TIMER_TYPE_SHUTDOWNGUARD, stcb->sctp_ep, stcb, netp);
		/*
		 * XXX: Why do this in the case where we have still data
		 * queued?
		 */
		FUNC14(inp, stcb, SCTP_OUTPUT_FROM_CLOSING, SCTP_SO_LOCKED);
		FUNC9(stcb);
		FUNC4(inp);
		return (0);
	}
}