
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_3__ {int active_keyid; } ;
struct TYPE_4__ {int peer_auth_chunks; TYPE_1__ authinfo; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_stream_queue_pending {int sinfo_flags; scalar_t__ length; int msg_is_complete; int holds_key_ref; struct sctp_nets* net; int auth_keyid; int * tail_mbuf; int data; scalar_t__ put_last_out; scalar_t__ some_taken; scalar_t__ sender_all_done; int sid; int ts; scalar_t__ fsn; int context; int ppid; int timetolive; scalar_t__ act_flags; } ;
struct sctp_sndrcvinfo {int sinfo_flags; int sinfo_keynumber; scalar_t__ sinfo_keynumber_valid; int sinfo_stream; int sinfo_context; int sinfo_ppid; int sinfo_timetolive; } ;
struct sctp_nets {int ref_count; } ;
struct sctp_association {int state; } ;
typedef int ssize_t ;


 int ECONNRESET ;
 int ENOMEM ;
 int SCTP_ADDR_OVER ;
 int SCTP_DATA ;
 int SCTP_DATA_CHUNK_OVERHEAD (struct sctp_tcb*) ;
 int SCTP_EOF ;
 int SCTP_EOR ;
 int SCTP_FROM_SCTP_OUTPUT ;
 int SCTP_GETTIME_TIMEVAL (int *) ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_LTRACE_ERR_RET (int *,struct sctp_tcb*,struct sctp_nets*,int ,int) ;
 int SCTP_SO_LOCKED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ;
 int atomic_add_int (int *,int) ;
 scalar_t__ min (scalar_t__,int ) ;
 int sctp_alloc_a_strmoq (struct sctp_tcb*,struct sctp_stream_queue_pending*) ;
 scalar_t__ sctp_auth_is_required_chunk (int ,int ) ;
 int sctp_auth_key_acquire (struct sctp_tcb*,int ) ;
 int sctp_copy_one (struct sctp_stream_queue_pending*,struct uio*,int) ;
 int sctp_free_a_strmoq (struct sctp_tcb*,struct sctp_stream_queue_pending*,int ) ;
 int sctp_set_prsctp_policy (struct sctp_stream_queue_pending*) ;

__attribute__((used)) static struct sctp_stream_queue_pending *
sctp_copy_it_in(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    struct sctp_sndrcvinfo *srcv,
    struct uio *uio,
    struct sctp_nets *net,
    ssize_t max_send_len,
    int user_marks_eor,
    int *error)
{
 struct sctp_stream_queue_pending *sp = ((void*)0);
 int resv_in_first;

 *error = 0;

 if ((SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_SENT) ||
     (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_ACK_SENT) ||
     (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED) ||
     (asoc->state & SCTP_STATE_SHUTDOWN_PENDING)) {

  SCTP_LTRACE_ERR_RET(((void*)0), stcb, ((void*)0), SCTP_FROM_SCTP_OUTPUT, ECONNRESET);
  *error = ECONNRESET;
  goto out_now;
 }
 sctp_alloc_a_strmoq(stcb, sp);
 if (sp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(((void*)0), stcb, net, SCTP_FROM_SCTP_OUTPUT, ENOMEM);
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
 (void)SCTP_GETTIME_TIMEVAL(&sp->ts);

 sp->sid = srcv->sinfo_stream;
 sp->length = (uint32_t)min(uio->uio_resid, max_send_len);
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
 resv_in_first = SCTP_DATA_CHUNK_OVERHEAD(stcb);
 sp->data = sp->tail_mbuf = ((void*)0);
 if (sp->length == 0) {
  goto skip_copy;
 }
 if (srcv->sinfo_keynumber_valid) {
  sp->auth_keyid = srcv->sinfo_keynumber;
 } else {
  sp->auth_keyid = stcb->asoc.authinfo.active_keyid;
 }
 if (sctp_auth_is_required_chunk(SCTP_DATA, stcb->asoc.peer_auth_chunks)) {
  sctp_auth_key_acquire(stcb, sp->auth_keyid);
  sp->holds_key_ref = 1;
 }
 *error = sctp_copy_one(sp, uio, resv_in_first);
skip_copy:
 if (*error) {
  sctp_free_a_strmoq(stcb, sp, SCTP_SO_LOCKED);
  sp = ((void*)0);
 } else {
  if (sp->sinfo_flags & SCTP_ADDR_OVER) {
   sp->net = net;
   atomic_add_int(&sp->net->ref_count, 1);
  } else {
   sp->net = ((void*)0);
  }
  sctp_set_prsctp_policy(sp);
 }
out_now:
 return (sp);
}
