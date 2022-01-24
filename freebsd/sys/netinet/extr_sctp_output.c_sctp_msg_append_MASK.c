#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* sctp_ss_add_to_stream ) (struct sctp_tcb*,TYPE_3__*,struct sctp_stream_out*,struct sctp_stream_queue_pending*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  active_keyid; } ;
struct TYPE_6__ {size_t streamoutcnt; size_t stream_locked_on; int state; TYPE_2__ ss_functions; int /*<<< orphan*/  stream_queue_cnt; int /*<<< orphan*/  peer_auth_chunks; TYPE_1__ authinfo; struct sctp_stream_out* strmout; scalar_t__ stream_locked; } ;
struct sctp_tcb {TYPE_3__ asoc; } ;
struct sctp_stream_queue_pending {int sinfo_flags; size_t sid; int msg_is_complete; int sender_all_done; int holds_key_ref; scalar_t__ length; int /*<<< orphan*/  auth_keyid; struct mbuf* tail_mbuf; struct mbuf* data; scalar_t__ some_taken; int /*<<< orphan*/  ts; struct sctp_nets* net; scalar_t__ fsn; int /*<<< orphan*/  context; int /*<<< orphan*/  ppid; int /*<<< orphan*/  timetolive; } ;
struct sctp_stream_out {int /*<<< orphan*/  outqueue; } ;
struct sctp_sndrcvinfo {size_t sinfo_stream; int sinfo_flags; int /*<<< orphan*/  sinfo_keynumber; scalar_t__ sinfo_keynumber_valid; int /*<<< orphan*/  sinfo_context; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_timetolive; } ;
struct sctp_nets {int /*<<< orphan*/  ref_count; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int SCTP_ADDR_OVER ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  SCTP_DATA ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sctp_tcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ *,struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ; 
 int SCTP_STATE_SHUTDOWN_PENDING ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sctp_stream_queue_pending*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_tcb*,struct sctp_stream_queue_pending*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_stream_queue_pending*) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_tcb*,TYPE_3__*,struct sctp_stream_out*,struct sctp_stream_queue_pending*,int) ; 

__attribute__((used)) static int
FUNC17(struct sctp_tcb *stcb,
    struct sctp_nets *net,
    struct mbuf *m,
    struct sctp_sndrcvinfo *srcv, int hold_stcb_lock)
{
	int error = 0;
	struct mbuf *at;
	struct sctp_stream_queue_pending *sp = NULL;
	struct sctp_stream_out *strm;

	/*
	 * Given an mbuf chain, put it into the association send queue and
	 * place it on the wheel
	 */
	if (srcv->sinfo_stream >= stcb->asoc.streamoutcnt) {
		/* Invalid stream number */
		FUNC5(m, NULL, stcb, net, SCTP_FROM_SCTP_OUTPUT, EINVAL);
		error = EINVAL;
		goto out_now;
	}
	if ((stcb->asoc.stream_locked) &&
	    (stcb->asoc.stream_locked_on != srcv->sinfo_stream)) {
		FUNC5(m, NULL, stcb, net, SCTP_FROM_SCTP_OUTPUT, EINVAL);
		error = EINVAL;
		goto out_now;
	}
	strm = &stcb->asoc.strmout[srcv->sinfo_stream];
	/* Now can we send this? */
	if ((FUNC3(stcb) == SCTP_STATE_SHUTDOWN_SENT) ||
	    (FUNC3(stcb) == SCTP_STATE_SHUTDOWN_ACK_SENT) ||
	    (FUNC3(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED) ||
	    (stcb->asoc.state & SCTP_STATE_SHUTDOWN_PENDING)) {
		/* got data while shutting down */
		FUNC4(NULL, stcb, NULL, SCTP_FROM_SCTP_OUTPUT, ECONNRESET);
		error = ECONNRESET;
		goto out_now;
	}
	FUNC10(stcb, sp);
	if (sp == NULL) {
		FUNC4(NULL, stcb, NULL, SCTP_FROM_SCTP_OUTPUT, ENOMEM);
		error = ENOMEM;
		goto out_now;
	}
	sp->sinfo_flags = srcv->sinfo_flags;
	sp->timetolive = srcv->sinfo_timetolive;
	sp->ppid = srcv->sinfo_ppid;
	sp->context = srcv->sinfo_context;
	sp->fsn = 0;
	if (sp->sinfo_flags & SCTP_ADDR_OVER) {
		sp->net = net;
		FUNC9(&sp->net->ref_count, 1);
	} else {
		sp->net = NULL;
	}
	(void)FUNC2(&sp->ts);
	sp->sid = srcv->sinfo_stream;
	sp->msg_is_complete = 1;
	sp->sender_all_done = 1;
	sp->some_taken = 0;
	sp->data = m;
	sp->tail_mbuf = NULL;
	FUNC14(sp);
	/*
	 * We could in theory (for sendall) sifa the length in, but we would
	 * still have to hunt through the chain since we need to setup the
	 * tail_mbuf
	 */
	sp->length = 0;
	for (at = m; at; at = FUNC1(at)) {
		if (FUNC1(at) == NULL)
			sp->tail_mbuf = at;
		sp->length += FUNC0(at);
	}
	if (srcv->sinfo_keynumber_valid) {
		sp->auth_keyid = srcv->sinfo_keynumber;
	} else {
		sp->auth_keyid = stcb->asoc.authinfo.active_keyid;
	}
	if (FUNC11(SCTP_DATA, stcb->asoc.peer_auth_chunks)) {
		FUNC12(stcb, sp->auth_keyid);
		sp->holds_key_ref = 1;
	}
	if (hold_stcb_lock == 0) {
		FUNC6(stcb);
	}
	FUNC15(stcb, sp->length);
	FUNC9(&stcb->asoc.stream_queue_cnt, 1);
	FUNC8(&strm->outqueue, sp, next);
	stcb->asoc.ss_functions.sctp_ss_add_to_stream(stcb, &stcb->asoc, strm, sp, 1);
	m = NULL;
	if (hold_stcb_lock == 0) {
		FUNC7(stcb);
	}
out_now:
	if (m) {
		FUNC13(m);
	}
	return (error);
}