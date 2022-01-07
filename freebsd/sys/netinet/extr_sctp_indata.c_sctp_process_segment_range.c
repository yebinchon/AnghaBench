
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_12__ {scalar_t__ tsn; scalar_t__ chunk_was_revoked; size_t sid; scalar_t__ doing_fast_retransmit; } ;
struct TYPE_13__ {TYPE_3__ data; } ;
struct sctp_tmit_chunk {scalar_t__ sent; int snd_count; TYPE_4__ rec; int * data; scalar_t__ book_size; TYPE_5__* whoTo; scalar_t__ do_rtt; int sent_rcv_time; scalar_t__ send_size; } ;
struct TYPE_10__ {int (* sctp_cwnd_update_tsn_acknowledged ) (TYPE_5__*,struct sctp_tmit_chunk*) ;} ;
struct TYPE_15__ {unsigned int this_sack_highest_gap; int sent_queue_retran_cnt; int trigger_reset; int sent_queue; TYPE_2__* strmout; TYPE_1__ cc_functions; } ;
struct sctp_tcb {TYPE_7__ asoc; } ;
struct TYPE_14__ {int find_pseudo_cumack; scalar_t__ pseudo_cumack; int find_rtx_pseudo_cumack; scalar_t__ rtx_pseudo_cumack; int saw_newack; unsigned int this_sack_highest_newack; int new_pseudo_cumack; int rto_needed; int cwnd; int net_ack2; int net_ack; int flight_size; } ;
struct TYPE_11__ {scalar_t__ chunks_on_queues; scalar_t__ state; int outqueue; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_LOGGING_ENABLE ;
 int SCTP_CWND_LOG_FROM_SACK ;
 scalar_t__ SCTP_DATAGRAM_MARKED ;
 scalar_t__ SCTP_DATAGRAM_NR_ACKED ;
 scalar_t__ SCTP_DATAGRAM_RESEND ;
 scalar_t__ SCTP_DATAGRAM_UNSENT ;
 int SCTP_FLIGHT_LOGGING_ENABLE ;
 int SCTP_FLIGHT_LOG_DOWN_GAP ;
 scalar_t__ SCTP_FORWARD_TSN_SKIP ;
 int SCTP_LOG_TSN_ACKED ;
 int SCTP_RTT_FROM_DATA ;
 int SCTP_SACK_LOGGING_ENABLE ;
 scalar_t__ SCTP_STREAM_RESET_PENDING ;
 scalar_t__ SCTP_TSN_GT (unsigned int,unsigned int) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct sctp_tmit_chunk* TAILQ_FIRST (int *) ;
 struct sctp_tmit_chunk* TAILQ_NEXT (struct sctp_tmit_chunk*,int ) ;
 int panic (char*,size_t) ;
 int sctp_audit_log (int,int) ;
 scalar_t__ sctp_calculate_rto (struct sctp_tcb*,TYPE_7__*,TYPE_5__*,int *,int ) ;
 int sctp_flight_size_decrease (struct sctp_tmit_chunk*) ;
 int sctp_free_bufspace (struct sctp_tcb*,TYPE_7__*,struct sctp_tmit_chunk*,int) ;
 int sctp_log_cwnd (struct sctp_tcb*,TYPE_5__*,scalar_t__,int ) ;
 int sctp_log_sack (int,int,unsigned int,int,int,int ) ;
 int sctp_logging_level ;
 int sctp_m_freem (int *) ;
 int sctp_misc_ints (int ,int ,scalar_t__,int,unsigned int) ;
 int sctp_next ;
 int sctp_total_flight_decrease (struct sctp_tcb*,struct sctp_tmit_chunk*) ;
 int sctp_ucount_decr (int) ;
 int stub1 (TYPE_5__*,struct sctp_tmit_chunk*) ;

__attribute__((used)) static int
sctp_process_segment_range(struct sctp_tcb *stcb, struct sctp_tmit_chunk **p_tp1, uint32_t last_tsn,
    uint16_t frag_strt, uint16_t frag_end, int nr_sacking,
    int *num_frs,
    uint32_t *biggest_newly_acked_tsn,
    uint32_t *this_sack_lowest_newack,
    int *rto_ok)
{
 struct sctp_tmit_chunk *tp1;
 unsigned int theTSN;
 int j, wake_him = 0, circled = 0;


 tp1 = *p_tp1;
 if (tp1 == ((void*)0)) {
  tp1 = TAILQ_FIRST(&stcb->asoc.sent_queue);
 }
 for (j = frag_strt; j <= frag_end; j++) {
  theTSN = j + last_tsn;
  while (tp1) {
   if (tp1->rec.data.doing_fast_retransmit)
    (*num_frs) += 1;
   if ((tp1->sent < SCTP_DATAGRAM_RESEND) &&
       (tp1->whoTo->find_pseudo_cumack == 1) &&
       (tp1->snd_count == 1)) {
    tp1->whoTo->pseudo_cumack = tp1->rec.data.tsn;
    tp1->whoTo->find_pseudo_cumack = 0;
   }
   if ((tp1->sent < SCTP_DATAGRAM_RESEND) &&
       (tp1->whoTo->find_rtx_pseudo_cumack == 1) &&
       (tp1->snd_count > 1)) {
    tp1->whoTo->rtx_pseudo_cumack = tp1->rec.data.tsn;
    tp1->whoTo->find_rtx_pseudo_cumack = 0;
   }
   if (tp1->rec.data.tsn == theTSN) {
    if (tp1->sent != SCTP_DATAGRAM_UNSENT) {




     if (tp1->sent < SCTP_DATAGRAM_RESEND) {







      if (SCTP_TSN_GT(tp1->rec.data.tsn,
          *biggest_newly_acked_tsn)) {
       *biggest_newly_acked_tsn = tp1->rec.data.tsn;
      }







      if (tp1->rec.data.chunk_was_revoked == 0)
       tp1->whoTo->saw_newack = 1;

      if (SCTP_TSN_GT(tp1->rec.data.tsn,
          tp1->whoTo->this_sack_highest_newack)) {
       tp1->whoTo->this_sack_highest_newack =
           tp1->rec.data.tsn;
      }




      if (*this_sack_lowest_newack == 0) {
       if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_SACK_LOGGING_ENABLE) {
        sctp_log_sack(*this_sack_lowest_newack,
            last_tsn,
            tp1->rec.data.tsn,
            0,
            0,
            SCTP_LOG_TSN_ACKED);
       }
       *this_sack_lowest_newack = tp1->rec.data.tsn;
      }
      if (tp1->rec.data.tsn == tp1->whoTo->pseudo_cumack) {
       if (tp1->rec.data.chunk_was_revoked == 0) {
        tp1->whoTo->new_pseudo_cumack = 1;
       }
       tp1->whoTo->find_pseudo_cumack = 1;
      }
      if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_LOGGING_ENABLE) {
       sctp_log_cwnd(stcb, tp1->whoTo, tp1->rec.data.tsn, SCTP_CWND_LOG_FROM_SACK);
      }
      if (tp1->rec.data.tsn == tp1->whoTo->rtx_pseudo_cumack) {
       if (tp1->rec.data.chunk_was_revoked == 0) {
        tp1->whoTo->new_pseudo_cumack = 1;
       }
       tp1->whoTo->find_rtx_pseudo_cumack = 1;
      }
      if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_SACK_LOGGING_ENABLE) {
       sctp_log_sack(*biggest_newly_acked_tsn,
           last_tsn,
           tp1->rec.data.tsn,
           frag_strt,
           frag_end,
           SCTP_LOG_TSN_ACKED);
      }
      if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_FLIGHT_LOGGING_ENABLE) {
       sctp_misc_ints(SCTP_FLIGHT_LOG_DOWN_GAP,
           tp1->whoTo->flight_size,
           tp1->book_size,
           (uint32_t)(uintptr_t)tp1->whoTo,
           tp1->rec.data.tsn);
      }
      sctp_flight_size_decrease(tp1);
      if (stcb->asoc.cc_functions.sctp_cwnd_update_tsn_acknowledged) {
       (*stcb->asoc.cc_functions.sctp_cwnd_update_tsn_acknowledged) (tp1->whoTo,
           tp1);
      }
      sctp_total_flight_decrease(stcb, tp1);

      tp1->whoTo->net_ack += tp1->send_size;
      if (tp1->snd_count < 2) {



       tp1->whoTo->net_ack2 += tp1->send_size;




       if (tp1->do_rtt) {
        if (*rto_ok &&
            sctp_calculate_rto(stcb,
            &stcb->asoc,
            tp1->whoTo,
            &tp1->sent_rcv_time,
            SCTP_RTT_FROM_DATA)) {
         *rto_ok = 0;
        }
        if (tp1->whoTo->rto_needed == 0) {
         tp1->whoTo->rto_needed = 1;
        }
        tp1->do_rtt = 0;
       }
      }

     }
     if (tp1->sent <= SCTP_DATAGRAM_RESEND) {
      if (SCTP_TSN_GT(tp1->rec.data.tsn,
          stcb->asoc.this_sack_highest_gap)) {
       stcb->asoc.this_sack_highest_gap =
           tp1->rec.data.tsn;
      }
      if (tp1->sent == SCTP_DATAGRAM_RESEND) {
       sctp_ucount_decr(stcb->asoc.sent_queue_retran_cnt);




      }
     }




     if ((tp1->sent != SCTP_FORWARD_TSN_SKIP) &&
         (tp1->sent != SCTP_DATAGRAM_NR_ACKED)) {
      tp1->sent = SCTP_DATAGRAM_MARKED;
     }
     if (tp1->rec.data.chunk_was_revoked) {

      tp1->whoTo->cwnd -= tp1->book_size;
      tp1->rec.data.chunk_was_revoked = 0;
     }

     if (nr_sacking &&
         (tp1->sent != SCTP_DATAGRAM_NR_ACKED)) {
      if (stcb->asoc.strmout[tp1->rec.data.sid].chunks_on_queues > 0) {
       stcb->asoc.strmout[tp1->rec.data.sid].chunks_on_queues--;




      }
      if ((stcb->asoc.strmout[tp1->rec.data.sid].chunks_on_queues == 0) &&
          (stcb->asoc.strmout[tp1->rec.data.sid].state == SCTP_STREAM_RESET_PENDING) &&
          TAILQ_EMPTY(&stcb->asoc.strmout[tp1->rec.data.sid].outqueue)) {
       stcb->asoc.trigger_reset = 1;
      }
      tp1->sent = SCTP_DATAGRAM_NR_ACKED;
      if (tp1->data) {




       sctp_free_bufspace(stcb, &stcb->asoc, tp1, 1);
       sctp_m_freem(tp1->data);
       tp1->data = ((void*)0);
      }
      wake_him++;
     }
    }
    break;
   }
   if (SCTP_TSN_GT(tp1->rec.data.tsn, theTSN)) {
    break;
   }
   tp1 = TAILQ_NEXT(tp1, sctp_next);
   if ((tp1 == ((void*)0)) && (circled == 0)) {
    circled++;
    tp1 = TAILQ_FIRST(&stcb->asoc.sent_queue);
   }
  }
  if (tp1 == ((void*)0)) {
   circled = 0;
   tp1 = TAILQ_FIRST(&stcb->asoc.sent_queue);
  }

 }
 *p_tp1 = tp1;
 return (wake_him);
}
