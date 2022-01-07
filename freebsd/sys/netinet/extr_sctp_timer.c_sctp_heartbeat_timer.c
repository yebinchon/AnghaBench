
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_5__ {scalar_t__ total_output_queue_size; int sent_queue; int send_queue; int max_send_times; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int * _s_addr; } ;
struct sctp_nets {int dest_state; scalar_t__ hb_responded; int heart_beat_delay; TYPE_3__ last_sent_time; scalar_t__ partial_bytes_acked; scalar_t__ src_addr_selected; TYPE_1__ ro; } ;
struct sctp_inpcb {int dummy; } ;


 int SCTP_ADDR_NOHB ;
 int SCTP_ADDR_PF ;
 int SCTP_GETTIME_TIMEVAL (struct timeval*) ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int sctp_audit_stream_queues_for_size (struct sctp_inpcb*,struct sctp_tcb*) ;
 int sctp_backoff_on_timeout (struct sctp_tcb*,struct sctp_nets*,int,int ,int ) ;
 int sctp_free_ifa (int *) ;
 int sctp_send_hb (struct sctp_tcb*,struct sctp_nets*,int ) ;
 scalar_t__ sctp_threshold_management (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*,int ) ;
 int timevalsub (struct timeval*,TYPE_3__*) ;

int
sctp_heartbeat_timer(struct sctp_inpcb *inp, struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
 uint8_t net_was_pf;

 if (net->dest_state & SCTP_ADDR_PF) {
  net_was_pf = 1;
 } else {
  net_was_pf = 0;
 }
 if (net->hb_responded == 0) {
  if (net->ro._s_addr) {




   sctp_free_ifa(net->ro._s_addr);
   net->ro._s_addr = ((void*)0);
   net->src_addr_selected = 0;
  }
  sctp_backoff_on_timeout(stcb, net, 1, 0, 0);
  if (sctp_threshold_management(inp, stcb, net, stcb->asoc.max_send_times)) {

   return (1);
  }
 }

 if (net->partial_bytes_acked) {
  net->partial_bytes_acked = 0;
 }
 if ((stcb->asoc.total_output_queue_size > 0) &&
     (TAILQ_EMPTY(&stcb->asoc.send_queue)) &&
     (TAILQ_EMPTY(&stcb->asoc.sent_queue))) {
  sctp_audit_stream_queues_for_size(inp, stcb);
 }
 if (!(net->dest_state & SCTP_ADDR_NOHB) &&
     !((net_was_pf == 0) && (net->dest_state & SCTP_ADDR_PF))) {




  uint32_t ms_gone_by;

  if ((net->last_sent_time.tv_sec > 0) ||
      (net->last_sent_time.tv_usec > 0)) {
   struct timeval diff;

   SCTP_GETTIME_TIMEVAL(&diff);
   timevalsub(&diff, &net->last_sent_time);
   ms_gone_by = (uint32_t)(diff.tv_sec * 1000) +
       (uint32_t)(diff.tv_usec / 1000);
  } else {
   ms_gone_by = 0xffffffff;
  }
  if ((ms_gone_by >= net->heart_beat_delay) ||
      (net->dest_state & SCTP_ADDR_PF)) {
   sctp_send_hb(stcb, net, SCTP_SO_NOT_LOCKED);
  }
 }
 return (0);
}
