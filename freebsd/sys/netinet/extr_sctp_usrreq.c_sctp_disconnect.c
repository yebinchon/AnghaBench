
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sb_cc; } ;
struct socket {int so_options; scalar_t__ so_linger; TYPE_1__ so_rcv; scalar_t__ so_pcb; } ;
struct TYPE_4__ {scalar_t__ (* sctp_ss_is_user_msgs_incomplete ) (struct sctp_tcb*,struct sctp_association*) ;} ;
struct sctp_association {int state; scalar_t__ stream_queue_cnt; int sent_queue; int send_queue; TYPE_2__ ss_functions; struct sctp_nets* primary_destination; struct sctp_nets* alternate; } ;
struct sctp_tcb {struct sctp_inpcb* sctp_ep; struct sctp_association asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int sctp_flags; scalar_t__ last_abort_code; int sctp_asoc_list; } ;
struct mbuf {int dummy; } ;


 int EINVAL ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 scalar_t__ LIST_EMPTY (int *) ;
 struct sctp_tcb* LIST_FIRST (int *) ;
 int SCTP_ADD_SUBSTATE (struct sctp_tcb*,int) ;
 int SCTP_CAUSE_USER_INITIATED_ABT ;
 scalar_t__ SCTP_FROM_SCTP_USRREQ ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_INP_RLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RUNLOCK (struct sctp_inpcb*) ;
 scalar_t__ SCTP_LOC_3 ;
 scalar_t__ SCTP_LOC_4 ;
 scalar_t__ SCTP_LOC_5 ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,int *,int *,scalar_t__,int) ;
 int SCTP_NORMAL_PROC ;
 int SCTP_OUTPUT_FROM_CLOSING ;
 int SCTP_OUTPUT_FROM_T3 ;
 int SCTP_PCB_FLAGS_IN_TCPPOOL ;
 int SCTP_PCB_FLAGS_TCPTYPE ;
 int SCTP_SET_STATE (struct sctp_tcb*,scalar_t__) ;
 int SCTP_SO_LOCKED ;
 int SCTP_STATE_ABOUT_TO_BE_FREED ;
 scalar_t__ SCTP_STATE_COOKIE_WAIT ;
 scalar_t__ SCTP_STATE_OPEN ;
 int SCTP_STATE_PARTIAL_MSG_LEFT ;
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ;
 int SCTP_STAT_DECR_GAUGE32 (int ) ;
 int SCTP_STAT_INCR_COUNTER32 (int ) ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int SCTP_TIMER_TYPE_SHUTDOWN ;
 int SCTP_TIMER_TYPE_SHUTDOWNGUARD ;
 int SO_LINGER ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int sctp_chunk_output (struct sctp_inpcb*,struct sctp_tcb*,int ,int ) ;
 int sctp_free_assoc (struct sctp_inpcb*,struct sctp_tcb*,int ,scalar_t__) ;
 struct mbuf* sctp_generate_cause (int ,char*) ;
 int sctp_send_abort_tcb (struct sctp_tcb*,struct mbuf*,int ) ;
 int sctp_send_shutdown (struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_stop_timers_for_shutdown (struct sctp_tcb*) ;
 int sctp_timer_start (int ,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctps_aborted ;
 int sctps_currestab ;
 int soisdisconnecting (struct socket*) ;
 scalar_t__ stub1 (struct sctp_tcb*,struct sctp_association*) ;
 scalar_t__ stub2 (struct sctp_tcb*,struct sctp_association*) ;

int
sctp_disconnect(struct socket *so)
{
 struct sctp_inpcb *inp;

 inp = (struct sctp_inpcb *)so->so_pcb;
 if (inp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_USRREQ, ENOTCONN);
  return (ENOTCONN);
 }
 SCTP_INP_RLOCK(inp);
 if ((inp->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) ||
     (inp->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL)) {
  if (LIST_EMPTY(&inp->sctp_asoc_list)) {

   SCTP_INP_RUNLOCK(inp);
   return (0);
  } else {
   struct sctp_association *asoc;
   struct sctp_tcb *stcb;

   stcb = LIST_FIRST(&inp->sctp_asoc_list);
   if (stcb == ((void*)0)) {
    SCTP_INP_RUNLOCK(inp);
    SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_USRREQ, EINVAL);
    return (EINVAL);
   }
   SCTP_TCB_LOCK(stcb);
   asoc = &stcb->asoc;
   if (stcb->asoc.state & SCTP_STATE_ABOUT_TO_BE_FREED) {

    SCTP_TCB_UNLOCK(stcb);
    SCTP_INP_RUNLOCK(inp);
    return (0);
   }
   if (((so->so_options & SO_LINGER) &&
       (so->so_linger == 0)) ||
       (so->so_rcv.sb_cc > 0)) {
    if (SCTP_GET_STATE(stcb) != SCTP_STATE_COOKIE_WAIT) {

     struct mbuf *op_err;

     op_err = sctp_generate_cause(SCTP_CAUSE_USER_INITIATED_ABT, "");
     sctp_send_abort_tcb(stcb, op_err, SCTP_SO_LOCKED);
     SCTP_STAT_INCR_COUNTER32(sctps_aborted);
    }
    SCTP_INP_RUNLOCK(inp);
    if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
        (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
     SCTP_STAT_DECR_GAUGE32(sctps_currestab);
    }
    (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
        SCTP_FROM_SCTP_USRREQ + SCTP_LOC_3);

    return (0);
   }
   if (TAILQ_EMPTY(&asoc->send_queue) &&
       TAILQ_EMPTY(&asoc->sent_queue) &&
       (asoc->stream_queue_cnt == 0)) {

    if ((*asoc->ss_functions.sctp_ss_is_user_msgs_incomplete) (stcb, asoc)) {
     goto abort_anyway;
    }
    if ((SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_SENT) &&
        (SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_ACK_SENT)) {

     struct sctp_nets *netp;

     if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
         (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
      SCTP_STAT_DECR_GAUGE32(sctps_currestab);
     }
     SCTP_SET_STATE(stcb, SCTP_STATE_SHUTDOWN_SENT);
     sctp_stop_timers_for_shutdown(stcb);
     if (stcb->asoc.alternate) {
      netp = stcb->asoc.alternate;
     } else {
      netp = stcb->asoc.primary_destination;
     }
     sctp_send_shutdown(stcb, netp);
     sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWN,
         stcb->sctp_ep, stcb, netp);
     sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWNGUARD,
         stcb->sctp_ep, stcb, netp);
     sctp_chunk_output(stcb->sctp_ep, stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_LOCKED);
    }
   } else {
    struct sctp_nets *netp;

    if (stcb->asoc.alternate) {
     netp = stcb->asoc.alternate;
    } else {
     netp = stcb->asoc.primary_destination;
    }

    SCTP_ADD_SUBSTATE(stcb, SCTP_STATE_SHUTDOWN_PENDING);
    sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWNGUARD, stcb->sctp_ep, stcb,
        netp);
    if ((*asoc->ss_functions.sctp_ss_is_user_msgs_incomplete) (stcb, asoc)) {
     SCTP_ADD_SUBSTATE(stcb, SCTP_STATE_PARTIAL_MSG_LEFT);
    }
    if (TAILQ_EMPTY(&asoc->send_queue) &&
        TAILQ_EMPTY(&asoc->sent_queue) &&
        (asoc->state & SCTP_STATE_PARTIAL_MSG_LEFT)) {
     struct mbuf *op_err;

   abort_anyway:
     op_err = sctp_generate_cause(SCTP_CAUSE_USER_INITIATED_ABT, "");
     stcb->sctp_ep->last_abort_code = SCTP_FROM_SCTP_USRREQ + SCTP_LOC_4;
     sctp_send_abort_tcb(stcb, op_err, SCTP_SO_LOCKED);
     SCTP_STAT_INCR_COUNTER32(sctps_aborted);
     if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
         (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
      SCTP_STAT_DECR_GAUGE32(sctps_currestab);
     }
     SCTP_INP_RUNLOCK(inp);
     (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
         SCTP_FROM_SCTP_USRREQ + SCTP_LOC_5);
     return (0);
    } else {
     sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_CLOSING, SCTP_SO_LOCKED);
    }
   }
   soisdisconnecting(so);
   SCTP_TCB_UNLOCK(stcb);
   SCTP_INP_RUNLOCK(inp);
   return (0);
  }

 } else {

  SCTP_INP_RUNLOCK(inp);
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_USRREQ, EOPNOTSUPP);
  return (EOPNOTSUPP);
 }
}
