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
struct timeval {scalar_t__ tv_sec; } ;
struct sctp_association {int sctp_autoclose_ticks; struct sctp_nets* primary_destination; struct sctp_nets* alternate; int /*<<< orphan*/  sent_queue; int /*<<< orphan*/  send_queue; struct timeval time_last_sent; struct timeval time_last_rcvd; } ;
struct sctp_tcb {struct sctp_inpcb* sctp_ep; struct sctp_association asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 scalar_t__ FUNC1 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  SCTP_OUTPUT_FROM_AUTOCLOSE_TMR ; 
 int /*<<< orphan*/  SCTP_PCB_FLAGS_AUTOCLOSE ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 scalar_t__ SCTP_STATE_OPEN ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_AUTOCLOSE ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWNGUARD ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_inpcb*,struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sctp_inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  sctps_currestab ; 

void
FUNC11(struct sctp_inpcb *inp,
    struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
	struct timeval tn, *tim_touse;
	struct sctp_association *asoc;
	int ticks_gone_by;

	(void)FUNC0(&tn);
	if (stcb->asoc.sctp_autoclose_ticks &&
	    FUNC7(inp, SCTP_PCB_FLAGS_AUTOCLOSE)) {
		/* Auto close is on */
		asoc = &stcb->asoc;
		/* pick the time to use */
		if (asoc->time_last_rcvd.tv_sec >
		    asoc->time_last_sent.tv_sec) {
			tim_touse = &asoc->time_last_rcvd;
		} else {
			tim_touse = &asoc->time_last_sent;
		}
		/* Now has long enough transpired to autoclose? */
		ticks_gone_by = FUNC4(tn.tv_sec - tim_touse->tv_sec);
		if ((ticks_gone_by > 0) &&
		    (ticks_gone_by >= (int)asoc->sctp_autoclose_ticks)) {
			/*
			 * autoclose time has hit, call the output routine,
			 * which should do nothing just to be SURE we don't
			 * have hanging data. We can then safely check the
			 * queues and know that we are clear to send
			 * shutdown
			 */
			FUNC6(inp, stcb, SCTP_OUTPUT_FROM_AUTOCLOSE_TMR, SCTP_SO_NOT_LOCKED);
			/* Are we clean? */
			if (FUNC5(&asoc->send_queue) &&
			    FUNC5(&asoc->sent_queue)) {
				/*
				 * there is nothing queued to send, so I'm
				 * done...
				 */
				if (FUNC1(stcb) != SCTP_STATE_SHUTDOWN_SENT) {
					/* only send SHUTDOWN 1st time thru */
					struct sctp_nets *netp;

					if ((FUNC1(stcb) == SCTP_STATE_OPEN) ||
					    (FUNC1(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
						FUNC3(sctps_currestab);
					}
					FUNC2(stcb, SCTP_STATE_SHUTDOWN_SENT);
					FUNC9(stcb);
					if (stcb->asoc.alternate) {
						netp = stcb->asoc.alternate;
					} else {
						netp = stcb->asoc.primary_destination;
					}
					FUNC8(stcb, netp);
					FUNC10(SCTP_TIMER_TYPE_SHUTDOWN,
					    stcb->sctp_ep, stcb,
					    netp);
					FUNC10(SCTP_TIMER_TYPE_SHUTDOWNGUARD,
					    stcb->sctp_ep, stcb,
					    netp);
				}
			}
		} else {
			/*
			 * No auto close at this time, reset t-o to check
			 * later
			 */
			int tmp;

			/* fool the timer startup to use the time left */
			tmp = asoc->sctp_autoclose_ticks;
			asoc->sctp_autoclose_ticks -= ticks_gone_by;
			FUNC10(SCTP_TIMER_TYPE_AUTOCLOSE, inp, stcb,
			    net);
			/* restore the real tick value */
			asoc->sctp_autoclose_ticks = tmp;
		}
	}
}