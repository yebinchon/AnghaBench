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
typedef  scalar_t__ uint32_t ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_keyid; } ;
struct TYPE_4__ {int /*<<< orphan*/  peer_auth_chunks; TYPE_1__ authinfo; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_stream_queue_pending {int sinfo_flags; scalar_t__ length; int msg_is_complete; int holds_key_ref; struct sctp_nets* net; int /*<<< orphan*/  auth_keyid; int /*<<< orphan*/ * tail_mbuf; int /*<<< orphan*/  data; scalar_t__ put_last_out; scalar_t__ some_taken; scalar_t__ sender_all_done; int /*<<< orphan*/  sid; int /*<<< orphan*/  ts; scalar_t__ fsn; int /*<<< orphan*/  context; int /*<<< orphan*/  ppid; int /*<<< orphan*/  timetolive; scalar_t__ act_flags; } ;
struct sctp_sndrcvinfo {int sinfo_flags; int /*<<< orphan*/  sinfo_keynumber; scalar_t__ sinfo_keynumber_valid; int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  sinfo_context; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_timetolive; } ;
struct sctp_nets {int /*<<< orphan*/  ref_count; } ;
struct sctp_association {int state; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOMEM ; 
 int SCTP_ADDR_OVER ; 
 int /*<<< orphan*/  SCTP_DATA ; 
 int FUNC0 (struct sctp_tcb*) ; 
 int SCTP_EOF ; 
 int SCTP_EOR ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCTP_SO_LOCKED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ; 
 int SCTP_STATE_SHUTDOWN_PENDING ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_tcb*,struct sctp_stream_queue_pending*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sctp_stream_queue_pending*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_tcb*,struct sctp_stream_queue_pending*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_stream_queue_pending*) ; 

__attribute__((used)) static struct sctp_stream_queue_pending *
FUNC12(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    struct sctp_sndrcvinfo *srcv,
    struct uio *uio,
    struct sctp_nets *net,
    ssize_t max_send_len,
    int user_marks_eor,
    int *error)
{

	/*-
	 * This routine must be very careful in its work. Protocol
	 * processing is up and running so care must be taken to spl...()
	 * when you need to do something that may effect the stcb/asoc. The
	 * sb is locked however. When data is copied the protocol processing
	 * should be enabled since this is a slower operation...
	 */
	struct sctp_stream_queue_pending *sp = NULL;
	int resv_in_first;

	*error = 0;
	/* Now can we send this? */
	if ((FUNC2(stcb) == SCTP_STATE_SHUTDOWN_SENT) ||
	    (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_ACK_SENT) ||
	    (FUNC2(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED) ||
	    (asoc->state & SCTP_STATE_SHUTDOWN_PENDING)) {
		/* got data while shutting down */
		FUNC3(NULL, stcb, NULL, SCTP_FROM_SCTP_OUTPUT, ECONNRESET);
		*error = ECONNRESET;
		goto out_now;
	}
	FUNC6(stcb, sp);
	if (sp == NULL) {
		FUNC3(NULL, stcb, net, SCTP_FROM_SCTP_OUTPUT, ENOMEM);
		*error = ENOMEM;
		goto out_now;
	}
	sp->act_flags = 0;
	sp->sender_all_done = 0;
	sp->sinfo_flags = srcv->sinfo_flags;
	sp->timetolive = srcv->sinfo_timetolive;
	sp->ppid = srcv->sinfo_ppid;
	sp->context = srcv->sinfo_context;
	sp->fsn = 0;
	(void)FUNC1(&sp->ts);

	sp->sid = srcv->sinfo_stream;
	sp->length = (uint32_t)FUNC5(uio->uio_resid, max_send_len);
	if ((sp->length == (uint32_t)uio->uio_resid) &&
	    ((user_marks_eor == 0) ||
	    (srcv->sinfo_flags & SCTP_EOF) ||
	    (user_marks_eor && (srcv->sinfo_flags & SCTP_EOR)))) {
		sp->msg_is_complete = 1;
	} else {
		sp->msg_is_complete = 0;
	}
	sp->sender_all_done = 0;
	sp->some_taken = 0;
	sp->put_last_out = 0;
	resv_in_first = FUNC0(stcb);
	sp->data = *(sp->tail_mbuf = NULL);
	if (sp->length == 0) {
		goto skip_copy;
	}
	if (srcv->sinfo_keynumber_valid) {
		sp->auth_keyid = srcv->sinfo_keynumber;
	} else {
		sp->auth_keyid = stcb->asoc.authinfo.active_keyid;
	}
	if (FUNC7(SCTP_DATA, stcb->asoc.peer_auth_chunks)) {
		FUNC8(stcb, sp->auth_keyid);
		sp->holds_key_ref = 1;
	}
	*error = FUNC9(sp, uio, resv_in_first);
skip_copy:
	if (*error) {
		FUNC10(stcb, sp, SCTP_SO_LOCKED);
		sp = NULL;
	} else {
		if (sp->sinfo_flags & SCTP_ADDR_OVER) {
			sp->net = net;
			FUNC4(&sp->net->ref_count, 1);
		} else {
			sp->net = NULL;
		}
		FUNC11(sp);
	}
out_now:
	return (sp);
}