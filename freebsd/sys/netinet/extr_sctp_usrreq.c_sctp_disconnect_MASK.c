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
struct TYPE_3__ {scalar_t__ sb_cc; } ;
struct socket {int so_options; scalar_t__ so_linger; TYPE_1__ so_rcv; scalar_t__ so_pcb; } ;
struct TYPE_4__ {scalar_t__ (* sctp_ss_is_user_msgs_incomplete ) (struct sctp_tcb*,struct sctp_association*) ;} ;
struct sctp_association {int state; scalar_t__ stream_queue_cnt; int /*<<< orphan*/  sent_queue; int /*<<< orphan*/  send_queue; TYPE_2__ ss_functions; struct sctp_nets* primary_destination; struct sctp_nets* alternate; } ;
struct sctp_tcb {struct sctp_inpcb* sctp_ep; struct sctp_association asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int sctp_flags; scalar_t__ last_abort_code; int /*<<< orphan*/  sctp_asoc_list; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_tcb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tcb*,int) ; 
 int /*<<< orphan*/  SCTP_CAUSE_USER_INITIATED_ABT ; 
 scalar_t__ SCTP_FROM_SCTP_USRREQ ; 
 scalar_t__ FUNC3 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_inpcb*) ; 
 scalar_t__ SCTP_LOC_3 ; 
 scalar_t__ SCTP_LOC_4 ; 
 scalar_t__ SCTP_LOC_5 ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  SCTP_NORMAL_PROC ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_CLOSING ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_T3 ; 
 int SCTP_PCB_FLAGS_IN_TCPPOOL ; 
 int SCTP_PCB_FLAGS_TCPTYPE ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  SCTP_SO_LOCKED ; 
 int SCTP_STATE_ABOUT_TO_BE_FREED ; 
 scalar_t__ SCTP_STATE_COOKIE_WAIT ; 
 scalar_t__ SCTP_STATE_OPEN ; 
 int SCTP_STATE_PARTIAL_MSG_LEFT ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ; 
 int SCTP_STATE_SHUTDOWN_PENDING ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWNGUARD ; 
 int SO_LINGER ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mbuf* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_tcb*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC18 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  sctps_aborted ; 
 int /*<<< orphan*/  sctps_currestab ; 
 int /*<<< orphan*/  FUNC20 (struct socket*) ; 
 scalar_t__ FUNC21 (struct sctp_tcb*,struct sctp_association*) ; 
 scalar_t__ FUNC22 (struct sctp_tcb*,struct sctp_association*) ; 

int
FUNC23(struct socket *so)
{
	struct sctp_inpcb *inp;

	inp = (struct sctp_inpcb *)so->so_pcb;
	if (inp == NULL) {
		FUNC6(inp, NULL, NULL, SCTP_FROM_SCTP_USRREQ, ENOTCONN);
		return (ENOTCONN);
	}
	FUNC4(inp);
	if ((inp->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) ||
	    (inp->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL)) {
		if (FUNC0(&inp->sctp_asoc_list)) {
			/* No connection */
			FUNC5(inp);
			return (0);
		} else {
			struct sctp_association *asoc;
			struct sctp_tcb *stcb;

			stcb = FUNC1(&inp->sctp_asoc_list);
			if (stcb == NULL) {
				FUNC5(inp);
				FUNC6(inp, NULL, NULL, SCTP_FROM_SCTP_USRREQ, EINVAL);
				return (EINVAL);
			}
			FUNC10(stcb);
			asoc = &stcb->asoc;
			if (stcb->asoc.state & SCTP_STATE_ABOUT_TO_BE_FREED) {
				/* We are about to be freed, out of here */
				FUNC11(stcb);
				FUNC5(inp);
				return (0);
			}
			if (((so->so_options & SO_LINGER) &&
			    (so->so_linger == 0)) ||
			    (so->so_rcv.sb_cc > 0)) {
				if (FUNC3(stcb) != SCTP_STATE_COOKIE_WAIT) {
					/* Left with Data unread */
					struct mbuf *op_err;

					op_err = FUNC15(SCTP_CAUSE_USER_INITIATED_ABT, "");
					FUNC16(stcb, op_err, SCTP_SO_LOCKED);
					FUNC9(sctps_aborted);
				}
				FUNC5(inp);
				if ((FUNC3(stcb) == SCTP_STATE_OPEN) ||
				    (FUNC3(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
					FUNC8(sctps_currestab);
				}
				(void)FUNC14(inp, stcb, SCTP_NORMAL_PROC,
				    SCTP_FROM_SCTP_USRREQ + SCTP_LOC_3);
				/* No unlock tcb assoc is gone */
				return (0);
			}
			if (FUNC12(&asoc->send_queue) &&
			    FUNC12(&asoc->sent_queue) &&
			    (asoc->stream_queue_cnt == 0)) {
				/* there is nothing queued to send, so done */
				if ((*asoc->ss_functions.sctp_ss_is_user_msgs_incomplete) (stcb, asoc)) {
					goto abort_anyway;
				}
				if ((FUNC3(stcb) != SCTP_STATE_SHUTDOWN_SENT) &&
				    (FUNC3(stcb) != SCTP_STATE_SHUTDOWN_ACK_SENT)) {
					/* only send SHUTDOWN 1st time thru */
					struct sctp_nets *netp;

					if ((FUNC3(stcb) == SCTP_STATE_OPEN) ||
					    (FUNC3(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
						FUNC8(sctps_currestab);
					}
					FUNC7(stcb, SCTP_STATE_SHUTDOWN_SENT);
					FUNC18(stcb);
					if (stcb->asoc.alternate) {
						netp = stcb->asoc.alternate;
					} else {
						netp = stcb->asoc.primary_destination;
					}
					FUNC17(stcb, netp);
					FUNC19(SCTP_TIMER_TYPE_SHUTDOWN,
					    stcb->sctp_ep, stcb, netp);
					FUNC19(SCTP_TIMER_TYPE_SHUTDOWNGUARD,
					    stcb->sctp_ep, stcb, netp);
					FUNC13(stcb->sctp_ep, stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_LOCKED);
				}
			} else {
				/*
				 * we still got (or just got) data to send,
				 * so set SHUTDOWN_PENDING
				 */
				/*
				 * XXX sockets draft says that SCTP_EOF
				 * should be sent with no data. currently,
				 * we will allow user data to be sent first
				 * and move to SHUTDOWN-PENDING
				 */
				struct sctp_nets *netp;

				if (stcb->asoc.alternate) {
					netp = stcb->asoc.alternate;
				} else {
					netp = stcb->asoc.primary_destination;
				}

				FUNC2(stcb, SCTP_STATE_SHUTDOWN_PENDING);
				FUNC19(SCTP_TIMER_TYPE_SHUTDOWNGUARD, stcb->sctp_ep, stcb,
				    netp);
				if ((*asoc->ss_functions.sctp_ss_is_user_msgs_incomplete) (stcb, asoc)) {
					FUNC2(stcb, SCTP_STATE_PARTIAL_MSG_LEFT);
				}
				if (FUNC12(&asoc->send_queue) &&
				    FUNC12(&asoc->sent_queue) &&
				    (asoc->state & SCTP_STATE_PARTIAL_MSG_LEFT)) {
					struct mbuf *op_err;

			abort_anyway:
					op_err = FUNC15(SCTP_CAUSE_USER_INITIATED_ABT, "");
					stcb->sctp_ep->last_abort_code = SCTP_FROM_SCTP_USRREQ + SCTP_LOC_4;
					FUNC16(stcb, op_err, SCTP_SO_LOCKED);
					FUNC9(sctps_aborted);
					if ((FUNC3(stcb) == SCTP_STATE_OPEN) ||
					    (FUNC3(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
						FUNC8(sctps_currestab);
					}
					FUNC5(inp);
					(void)FUNC14(inp, stcb, SCTP_NORMAL_PROC,
					    SCTP_FROM_SCTP_USRREQ + SCTP_LOC_5);
					return (0);
				} else {
					FUNC13(inp, stcb, SCTP_OUTPUT_FROM_CLOSING, SCTP_SO_LOCKED);
				}
			}
			FUNC20(so);
			FUNC11(stcb);
			FUNC5(inp);
			return (0);
		}
		/* not reached */
	} else {
		/* UDP model does not support this */
		FUNC5(inp);
		FUNC6(inp, NULL, NULL, SCTP_FROM_SCTP_USRREQ, EOPNOTSUPP);
		return (EOPNOTSUPP);
	}
}