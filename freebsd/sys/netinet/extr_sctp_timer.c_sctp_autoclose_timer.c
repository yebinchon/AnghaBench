
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct sctp_association {int sctp_autoclose_ticks; struct sctp_nets* primary_destination; struct sctp_nets* alternate; int sent_queue; int send_queue; struct timeval time_last_sent; struct timeval time_last_rcvd; } ;
struct sctp_tcb {struct sctp_inpcb* sctp_ep; struct sctp_association asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int dummy; } ;


 int SCTP_GETTIME_TIMEVAL (struct timeval*) ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_OUTPUT_FROM_AUTOCLOSE_TMR ;
 int SCTP_PCB_FLAGS_AUTOCLOSE ;
 int SCTP_SET_STATE (struct sctp_tcb*,scalar_t__) ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ SCTP_STATE_OPEN ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ;
 int SCTP_STAT_DECR_GAUGE32 (int ) ;
 int SCTP_TIMER_TYPE_AUTOCLOSE ;
 int SCTP_TIMER_TYPE_SHUTDOWN ;
 int SCTP_TIMER_TYPE_SHUTDOWNGUARD ;
 int SEC_TO_TICKS (scalar_t__) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int sctp_chunk_output (struct sctp_inpcb*,struct sctp_tcb*,int ,int ) ;
 scalar_t__ sctp_is_feature_on (struct sctp_inpcb*,int ) ;
 int sctp_send_shutdown (struct sctp_tcb*,struct sctp_nets*) ;
 int sctp_stop_timers_for_shutdown (struct sctp_tcb*) ;
 int sctp_timer_start (int ,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;
 int sctps_currestab ;

void
sctp_autoclose_timer(struct sctp_inpcb *inp,
    struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
 struct timeval tn, *tim_touse;
 struct sctp_association *asoc;
 int ticks_gone_by;

 (void)SCTP_GETTIME_TIMEVAL(&tn);
 if (stcb->asoc.sctp_autoclose_ticks &&
     sctp_is_feature_on(inp, SCTP_PCB_FLAGS_AUTOCLOSE)) {

  asoc = &stcb->asoc;

  if (asoc->time_last_rcvd.tv_sec >
      asoc->time_last_sent.tv_sec) {
   tim_touse = &asoc->time_last_rcvd;
  } else {
   tim_touse = &asoc->time_last_sent;
  }

  ticks_gone_by = SEC_TO_TICKS(tn.tv_sec - tim_touse->tv_sec);
  if ((ticks_gone_by > 0) &&
      (ticks_gone_by >= (int)asoc->sctp_autoclose_ticks)) {







   sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_AUTOCLOSE_TMR, SCTP_SO_NOT_LOCKED);

   if (TAILQ_EMPTY(&asoc->send_queue) &&
       TAILQ_EMPTY(&asoc->sent_queue)) {




    if (SCTP_GET_STATE(stcb) != SCTP_STATE_SHUTDOWN_SENT) {

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
         stcb->sctp_ep, stcb,
         netp);
     sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWNGUARD,
         stcb->sctp_ep, stcb,
         netp);
    }
   }
  } else {




   int tmp;


   tmp = asoc->sctp_autoclose_ticks;
   asoc->sctp_autoclose_ticks -= ticks_gone_by;
   sctp_timer_start(SCTP_TIMER_TYPE_AUTOCLOSE, inp, stcb,
       net);

   asoc->sctp_autoclose_ticks = tmp;
  }
 }
}
