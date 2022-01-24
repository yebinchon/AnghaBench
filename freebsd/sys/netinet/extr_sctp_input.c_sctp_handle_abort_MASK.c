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
typedef  int uint16_t ;
struct socket {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcnt; } ;
struct sctp_tcb {int /*<<< orphan*/  sctp_ep; TYPE_2__ asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_error_cause {int /*<<< orphan*/  code; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  chunk_flags; int /*<<< orphan*/  chunk_length; } ;
struct sctp_abort_chunk {TYPE_1__ ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int SCTP_CAUSE_NAT_COLLIDING_STATE ; 
 int SCTP_CAUSE_NAT_MISSING_STATE ; 
 int /*<<< orphan*/  SCTP_DEBUG_INPUT2 ; 
 scalar_t__ SCTP_FROM_SCTP_INPUT ; 
 scalar_t__ FUNC2 (struct sctp_tcb*) ; 
 struct socket* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_LOC_7 ; 
 scalar_t__ SCTP_LOC_8 ; 
 int /*<<< orphan*/  SCTP_NORMAL_PROC ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 scalar_t__ SCTP_STATE_OPEN ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ; 
 int /*<<< orphan*/  SCTP_STATE_WAS_ABORTED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_RECV ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_tcb*,int,int,struct sctp_abort_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct sctp_tcb*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (struct sctp_tcb*) ; 
 scalar_t__ FUNC16 (struct sctp_tcb*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,struct sctp_nets*,scalar_t__) ; 
 int /*<<< orphan*/  sctps_aborted ; 
 int /*<<< orphan*/  sctps_currestab ; 

__attribute__((used)) static int
FUNC19(struct sctp_abort_chunk *abort,
    struct sctp_tcb *stcb, struct sctp_nets *net)
{
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
	struct socket *so;
#endif
	uint16_t len;
	uint16_t error;

	FUNC0(SCTP_DEBUG_INPUT2, "sctp_handle_abort: handling ABORT\n");
	if (stcb == NULL)
		return (0);

	len = FUNC12(abort->ch.chunk_length);
	if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_error_cause)) {
		/*
		 * Need to check the cause codes for our two magic nat
		 * aborts which don't kill the assoc necessarily.
		 */
		struct sctp_error_cause *cause;

		cause = (struct sctp_error_cause *)(abort + 1);
		error = FUNC12(cause->code);
		if (error == SCTP_CAUSE_NAT_COLLIDING_STATE) {
			FUNC0(SCTP_DEBUG_INPUT2, "Received Colliding state abort flags:%x\n",
			    abort->ch.chunk_flags);
			if (FUNC15(stcb)) {
				return (0);
			}
		} else if (error == SCTP_CAUSE_NAT_MISSING_STATE) {
			FUNC0(SCTP_DEBUG_INPUT2, "Received missing state abort flags:%x\n",
			    abort->ch.chunk_flags);
			if (FUNC16(stcb, net)) {
				return (0);
			}
		}
	} else {
		error = 0;
	}
	/* stop any receive timers */
	FUNC18(SCTP_TIMER_TYPE_RECV, stcb->sctp_ep, stcb, net,
	    SCTP_FROM_SCTP_INPUT + SCTP_LOC_7);
	/* notify user of the abort and clean up... */
	FUNC13(stcb, 1, error, abort, SCTP_SO_NOT_LOCKED);
	/* free the tcb */
	FUNC7(sctps_aborted);
	if ((FUNC2(stcb) == SCTP_STATE_OPEN) ||
	    (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
		FUNC6(sctps_currestab);
	}
#ifdef SCTP_ASOCLOG_OF_TSNS
	sctp_print_out_track_log(stcb);
#endif
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
	so = SCTP_INP_SO(stcb->sctp_ep);
	atomic_add_int(&stcb->asoc.refcnt, 1);
	SCTP_TCB_UNLOCK(stcb);
	SCTP_SOCKET_LOCK(so, 1);
	SCTP_TCB_LOCK(stcb);
	atomic_subtract_int(&stcb->asoc.refcnt, 1);
#endif
	FUNC1(stcb, SCTP_STATE_WAS_ABORTED);
	(void)FUNC14(stcb->sctp_ep, stcb, SCTP_NORMAL_PROC,
	    SCTP_FROM_SCTP_INPUT + SCTP_LOC_8);
#if defined(__APPLE__) || defined(SCTP_SO_LOCK_TESTING)
	SCTP_SOCKET_UNLOCK(so, 1);
#endif
	FUNC0(SCTP_DEBUG_INPUT2, "sctp_handle_abort: finished\n");
	return (1);
}