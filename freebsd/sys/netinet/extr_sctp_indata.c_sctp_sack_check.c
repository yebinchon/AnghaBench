
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int timer; } ;
struct sctp_association {int send_sack; scalar_t__ numduptsns; scalar_t__ delayed_ack; scalar_t__ data_pkts_seen; scalar_t__ sack_freq; scalar_t__ sctp_cmt_on_off; TYPE_1__ dack_timer; int cmt_dac_pkts_rcvd; scalar_t__ primary_destination; scalar_t__ alternate; int cumulative_tsn; int highest_tsn_inside_map; int highest_tsn_inside_nr_map; } ;
struct sctp_tcb {int sctp_ep; struct sctp_association asoc; } ;


 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 scalar_t__ SCTP_FROM_SCTP_INDATA ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 scalar_t__ SCTP_LOC_17 ;
 scalar_t__ SCTP_OS_TIMER_PENDING (int *) ;
 int SCTP_OS_TIMER_STOP (int *) ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ;
 int SCTP_TIMER_TYPE_RECV ;
 int SCTP_TSN_GT (int ,int ) ;
 int sctp_cmt_use_dac ;
 int sctp_send_sack (struct sctp_tcb*,int ) ;
 int sctp_send_shutdown (struct sctp_tcb*,scalar_t__) ;
 int sctp_slide_mapping_arrays (struct sctp_tcb*) ;
 int sctp_timer_start (int ,int ,struct sctp_tcb*,int *) ;
 int sctp_timer_stop (int ,int ,struct sctp_tcb*,int *,scalar_t__) ;

void
sctp_sack_check(struct sctp_tcb *stcb, int was_a_gap)
{
 struct sctp_association *asoc;
 uint32_t highest_tsn;
 int is_a_gap;

 sctp_slide_mapping_arrays(stcb);
 asoc = &stcb->asoc;
 if (SCTP_TSN_GT(asoc->highest_tsn_inside_nr_map, asoc->highest_tsn_inside_map)) {
  highest_tsn = asoc->highest_tsn_inside_nr_map;
 } else {
  highest_tsn = asoc->highest_tsn_inside_map;
 }

 is_a_gap = SCTP_TSN_GT(highest_tsn, stcb->asoc.cumulative_tsn);





 if (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_SENT) {





  if (SCTP_OS_TIMER_PENDING(&stcb->asoc.dack_timer.timer)) {
   sctp_timer_stop(SCTP_TIMER_TYPE_RECV,
       stcb->sctp_ep, stcb, ((void*)0),
       SCTP_FROM_SCTP_INDATA + SCTP_LOC_17);
  }
  sctp_send_shutdown(stcb,
      ((stcb->asoc.alternate) ? stcb->asoc.alternate : stcb->asoc.primary_destination));
  if (is_a_gap) {
   sctp_send_sack(stcb, SCTP_SO_NOT_LOCKED);
  }
 } else {




  stcb->asoc.cmt_dac_pkts_rcvd++;

  if ((stcb->asoc.send_sack == 1) ||

      ((was_a_gap) && (is_a_gap == 0)) ||

      (stcb->asoc.numduptsns) ||
      (is_a_gap) ||
      (stcb->asoc.delayed_ack == 0) ||
      (stcb->asoc.data_pkts_seen >= stcb->asoc.sack_freq)
      ) {

   if ((stcb->asoc.sctp_cmt_on_off > 0) &&
       (SCTP_BASE_SYSCTL(sctp_cmt_use_dac)) &&
       (stcb->asoc.send_sack == 0) &&
       (stcb->asoc.numduptsns == 0) &&
       (stcb->asoc.delayed_ack) &&
       (!SCTP_OS_TIMER_PENDING(&stcb->asoc.dack_timer.timer))) {
    sctp_timer_start(SCTP_TIMER_TYPE_RECV,
        stcb->sctp_ep, stcb, ((void*)0));
   } else {





    (void)SCTP_OS_TIMER_STOP(&stcb->asoc.dack_timer.timer);
    sctp_send_sack(stcb, SCTP_SO_NOT_LOCKED);
   }
  } else {
   if (!SCTP_OS_TIMER_PENDING(&stcb->asoc.dack_timer.timer)) {
    sctp_timer_start(SCTP_TIMER_TYPE_RECV,
        stcb->sctp_ep, stcb, ((void*)0));
   }
  }
 }
}
