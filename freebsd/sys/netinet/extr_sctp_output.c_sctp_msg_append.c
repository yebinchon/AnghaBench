
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* sctp_ss_add_to_stream ) (struct sctp_tcb*,TYPE_3__*,struct sctp_stream_out*,struct sctp_stream_queue_pending*,int) ;} ;
struct TYPE_4__ {int active_keyid; } ;
struct TYPE_6__ {size_t streamoutcnt; size_t stream_locked_on; int state; TYPE_2__ ss_functions; int stream_queue_cnt; int peer_auth_chunks; TYPE_1__ authinfo; struct sctp_stream_out* strmout; scalar_t__ stream_locked; } ;
struct sctp_tcb {TYPE_3__ asoc; } ;
struct sctp_stream_queue_pending {int sinfo_flags; size_t sid; int msg_is_complete; int sender_all_done; int holds_key_ref; scalar_t__ length; int auth_keyid; struct mbuf* tail_mbuf; struct mbuf* data; scalar_t__ some_taken; int ts; struct sctp_nets* net; scalar_t__ fsn; int context; int ppid; int timetolive; } ;
struct sctp_stream_out {int outqueue; } ;
struct sctp_sndrcvinfo {size_t sinfo_stream; int sinfo_flags; int sinfo_keynumber; scalar_t__ sinfo_keynumber_valid; int sinfo_context; int sinfo_ppid; int sinfo_timetolive; } ;
struct sctp_nets {int ref_count; } ;
struct mbuf {int dummy; } ;


 int ECONNRESET ;
 int EINVAL ;
 int ENOMEM ;
 int SCTP_ADDR_OVER ;
 scalar_t__ SCTP_BUF_LEN (struct mbuf*) ;
 struct mbuf* SCTP_BUF_NEXT (struct mbuf*) ;
 int SCTP_DATA ;
 int SCTP_FROM_SCTP_OUTPUT ;
 int SCTP_GETTIME_TIMEVAL (int *) ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_LTRACE_ERR_RET (int *,struct sctp_tcb*,int *,int ,int) ;
 int SCTP_LTRACE_ERR_RET_PKT (struct mbuf*,int *,struct sctp_tcb*,struct sctp_nets*,int ,int) ;
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ;
 int SCTP_TCB_SEND_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_SEND_UNLOCK (struct sctp_tcb*) ;
 int TAILQ_INSERT_TAIL (int *,struct sctp_stream_queue_pending*,int ) ;
 int atomic_add_int (int *,int) ;
 int next ;
 int sctp_alloc_a_strmoq (struct sctp_tcb*,struct sctp_stream_queue_pending*) ;
 scalar_t__ sctp_auth_is_required_chunk (int ,int ) ;
 int sctp_auth_key_acquire (struct sctp_tcb*,int ) ;
 int sctp_m_freem (struct mbuf*) ;
 int sctp_set_prsctp_policy (struct sctp_stream_queue_pending*) ;
 int sctp_snd_sb_alloc (struct sctp_tcb*,scalar_t__) ;
 int stub1 (struct sctp_tcb*,TYPE_3__*,struct sctp_stream_out*,struct sctp_stream_queue_pending*,int) ;

__attribute__((used)) static int
sctp_msg_append(struct sctp_tcb *stcb,
    struct sctp_nets *net,
    struct mbuf *m,
    struct sctp_sndrcvinfo *srcv, int hold_stcb_lock)
{
 int error = 0;
 struct mbuf *at;
 struct sctp_stream_queue_pending *sp = ((void*)0);
 struct sctp_stream_out *strm;





 if (srcv->sinfo_stream >= stcb->asoc.streamoutcnt) {

  SCTP_LTRACE_ERR_RET_PKT(m, ((void*)0), stcb, net, SCTP_FROM_SCTP_OUTPUT, EINVAL);
  error = EINVAL;
  goto out_now;
 }
 if ((stcb->asoc.stream_locked) &&
     (stcb->asoc.stream_locked_on != srcv->sinfo_stream)) {
  SCTP_LTRACE_ERR_RET_PKT(m, ((void*)0), stcb, net, SCTP_FROM_SCTP_OUTPUT, EINVAL);
  error = EINVAL;
  goto out_now;
 }
 strm = &stcb->asoc.strmout[srcv->sinfo_stream];

 if ((SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_SENT) ||
     (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_ACK_SENT) ||
     (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED) ||
     (stcb->asoc.state & SCTP_STATE_SHUTDOWN_PENDING)) {

  SCTP_LTRACE_ERR_RET(((void*)0), stcb, ((void*)0), SCTP_FROM_SCTP_OUTPUT, ECONNRESET);
  error = ECONNRESET;
  goto out_now;
 }
 sctp_alloc_a_strmoq(stcb, sp);
 if (sp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(((void*)0), stcb, ((void*)0), SCTP_FROM_SCTP_OUTPUT, ENOMEM);
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
  atomic_add_int(&sp->net->ref_count, 1);
 } else {
  sp->net = ((void*)0);
 }
 (void)SCTP_GETTIME_TIMEVAL(&sp->ts);
 sp->sid = srcv->sinfo_stream;
 sp->msg_is_complete = 1;
 sp->sender_all_done = 1;
 sp->some_taken = 0;
 sp->data = m;
 sp->tail_mbuf = ((void*)0);
 sctp_set_prsctp_policy(sp);





 sp->length = 0;
 for (at = m; at; at = SCTP_BUF_NEXT(at)) {
  if (SCTP_BUF_NEXT(at) == ((void*)0))
   sp->tail_mbuf = at;
  sp->length += SCTP_BUF_LEN(at);
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
 if (hold_stcb_lock == 0) {
  SCTP_TCB_SEND_LOCK(stcb);
 }
 sctp_snd_sb_alloc(stcb, sp->length);
 atomic_add_int(&stcb->asoc.stream_queue_cnt, 1);
 TAILQ_INSERT_TAIL(&strm->outqueue, sp, next);
 stcb->asoc.ss_functions.sctp_ss_add_to_stream(stcb, &stcb->asoc, strm, sp, 1);
 m = ((void*)0);
 if (hold_stcb_lock == 0) {
  SCTP_TCB_SEND_UNLOCK(stcb);
 }
out_now:
 if (m) {
  sctp_m_freem(m);
 }
 return (error);
}
