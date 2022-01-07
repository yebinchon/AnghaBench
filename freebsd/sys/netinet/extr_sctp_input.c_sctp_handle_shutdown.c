
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sctp_association {int state; int sent_queue; int send_queue; int time_entered; int refcnt; TYPE_2__* control_pdapi; struct sctp_stream_in* strmin; } ;
struct sctp_tcb {int sctp_ep; scalar_t__ sctp_socket; struct sctp_association asoc; } ;
struct sctp_stream_in {int inqueue; int uno_inqueue; } ;
struct TYPE_4__ {int chunk_length; } ;
struct sctp_shutdown_chunk {TYPE_1__ ch; } ;
struct sctp_nets {int dummy; } ;
struct TYPE_5__ {scalar_t__ on_strm_q; size_t sinfo_stream; int end_added; int pdapi_aborted; } ;


 int SCTPDBG (int ,char*) ;
 int SCTP_DEBUG_INPUT2 ;
 scalar_t__ SCTP_FROM_SCTP_INPUT ;
 int SCTP_GETTIME_TIMEVAL (int *) ;
 int SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_INP_READ_LOCK (int ) ;
 int SCTP_INP_READ_UNLOCK (int ) ;
 struct socket* SCTP_INP_SO (int ) ;
 scalar_t__ SCTP_LOC_9 ;
 int SCTP_NOTIFY_PEER_SHUTDOWN ;
 scalar_t__ SCTP_ON_ORDERED ;
 scalar_t__ SCTP_ON_UNORDERED ;
 int SCTP_SET_STATE (struct sctp_tcb*,int) ;
 int SCTP_SOCKET_LOCK (struct socket*,int) ;
 int SCTP_SOCKET_UNLOCK (struct socket*,int) ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_STATE_CLOSED_SOCKET ;
 int SCTP_STATE_COOKIE_ECHOED ;
 int SCTP_STATE_COOKIE_WAIT ;
 int SCTP_STATE_OPEN ;
 int SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_STATE_SHUTDOWN_SENT ;
 int SCTP_STAT_DECR_GAUGE32 (int ) ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int SCTP_TIMER_TYPE_SHUTDOWN ;
 int SCTP_TIMER_TYPE_SHUTDOWNACK ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int next_instrm ;
 int ntohs (int ) ;
 int panic (char*,TYPE_2__*,scalar_t__) ;
 int sctp_is_there_unsent_data (struct sctp_tcb*,int ) ;
 int sctp_send_shutdown_ack (struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_sorwakeup (int ,scalar_t__) ;
 int sctp_stop_timers_for_shutdown (struct sctp_tcb*) ;
 int sctp_timer_start (int ,int ,struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_timer_stop (int ,int ,struct sctp_tcb*,struct sctp_nets*,scalar_t__) ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,int ,int *,int ) ;
 int sctp_update_acked (struct sctp_tcb*,struct sctp_shutdown_chunk*,int*) ;
 int sctps_currestab ;

__attribute__((used)) static void
sctp_handle_shutdown(struct sctp_shutdown_chunk *cp,
    struct sctp_tcb *stcb, struct sctp_nets *net, int *abort_flag)
{
 struct sctp_association *asoc;
 int some_on_streamwheel;
 int old_state;




 SCTPDBG(SCTP_DEBUG_INPUT2,
     "sctp_handle_shutdown: handling SHUTDOWN\n");
 if (stcb == ((void*)0))
  return;
 asoc = &stcb->asoc;
 if ((SCTP_GET_STATE(stcb) == SCTP_STATE_COOKIE_WAIT) ||
     (SCTP_GET_STATE(stcb) == SCTP_STATE_COOKIE_ECHOED)) {
  return;
 }
 if (ntohs(cp->ch.chunk_length) != sizeof(struct sctp_shutdown_chunk)) {

  return;
 }
 old_state = SCTP_GET_STATE(stcb);
 sctp_update_acked(stcb, cp, abort_flag);
 if (*abort_flag) {
  return;
 }
 if (asoc->control_pdapi) {



  SCTP_INP_READ_LOCK(stcb->sctp_ep);
  if (asoc->control_pdapi->on_strm_q) {
   struct sctp_stream_in *strm;

   strm = &asoc->strmin[asoc->control_pdapi->sinfo_stream];
   if (asoc->control_pdapi->on_strm_q == SCTP_ON_UNORDERED) {

    TAILQ_REMOVE(&strm->uno_inqueue, asoc->control_pdapi, next_instrm);
    asoc->control_pdapi->on_strm_q = 0;
   } else if (asoc->control_pdapi->on_strm_q == SCTP_ON_ORDERED) {

    TAILQ_REMOVE(&strm->inqueue, asoc->control_pdapi, next_instrm);
    asoc->control_pdapi->on_strm_q = 0;






   }
  }
  asoc->control_pdapi->end_added = 1;
  asoc->control_pdapi->pdapi_aborted = 1;
  asoc->control_pdapi = ((void*)0);
  SCTP_INP_READ_UNLOCK(stcb->sctp_ep);
  if (stcb->sctp_socket) {
   sctp_sorwakeup(stcb->sctp_ep, stcb->sctp_socket);
  }



 }

 if (stcb->sctp_socket) {
  if ((SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_RECEIVED) &&
      (SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_ACK_SENT) &&
      (SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_SENT)) {
   SCTP_SET_STATE(stcb, SCTP_STATE_SHUTDOWN_RECEIVED);




   sctp_ulp_notify(SCTP_NOTIFY_PEER_SHUTDOWN, stcb, 0, ((void*)0), SCTP_SO_NOT_LOCKED);


   (void)SCTP_GETTIME_TIMEVAL(&asoc->time_entered);
  }
 }
 if (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_SENT) {




  sctp_timer_stop(SCTP_TIMER_TYPE_SHUTDOWN, stcb->sctp_ep, stcb,
      net, SCTP_FROM_SCTP_INPUT + SCTP_LOC_9);
 }

 some_on_streamwheel = sctp_is_there_unsent_data(stcb, SCTP_SO_NOT_LOCKED);

 if (!TAILQ_EMPTY(&asoc->send_queue) ||
     !TAILQ_EMPTY(&asoc->sent_queue) ||
     some_on_streamwheel) {

  return;
 } else {



  if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
      (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
   SCTP_STAT_DECR_GAUGE32(sctps_currestab);
  }
  if (SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_ACK_SENT) {
   SCTP_SET_STATE(stcb, SCTP_STATE_SHUTDOWN_ACK_SENT);
   sctp_stop_timers_for_shutdown(stcb);
   sctp_send_shutdown_ack(stcb, net);
   sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWNACK,
       stcb->sctp_ep, stcb, net);
  } else if (old_state == SCTP_STATE_SHUTDOWN_ACK_SENT) {
   sctp_send_shutdown_ack(stcb, net);
  }
 }
}
