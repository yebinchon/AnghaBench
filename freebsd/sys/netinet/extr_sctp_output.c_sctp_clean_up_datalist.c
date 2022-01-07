
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int tsn; scalar_t__ chunk_was_revoked; int fast_retran_tsn; int cwnd_at_send; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct sctp_tmit_chunk {int snd_count; scalar_t__ send_size; TYPE_2__ rec; struct sctp_nets* whoTo; int book_size; int sent; int sent_rcv_time; scalar_t__ do_rtt; } ;
struct sctp_tcb {TYPE_4__* sctp_ep; } ;
struct sctp_nets {int flight_size; int ref_count; int cwnd; int last_sent_time; } ;
struct TYPE_10__ {int (* sctp_cwnd_update_packet_transmitted ) (struct sctp_tcb*,struct sctp_nets*) ;} ;
struct sctp_association {scalar_t__ peers_rwnd; scalar_t__ total_flight; TYPE_5__ cc_functions; int sent_queue_cnt; int sent_queue; int send_queue_cnt; int send_queue; } ;
struct TYPE_8__ {scalar_t__ sctp_sws_sender; } ;
struct TYPE_9__ {TYPE_3__ sctp_ep; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_DATAGRAM_SENT ;
 int SCTP_DECREASE_PEER_RWND ;
 int SCTP_FLIGHT_LOGGING_ENABLE ;
 int SCTP_FLIGHT_LOG_UP ;
 int SCTP_LOG_RWND_ENABLE ;
 int SCTP_STAT_INCR (int ) ;
 scalar_t__ SCTP_TSN_GT (int ,int ) ;
 int TAILQ_INSERT_AFTER (int *,struct sctp_tmit_chunk*,struct sctp_tmit_chunk*,int ) ;
 int TAILQ_INSERT_BEFORE (struct sctp_tmit_chunk*,struct sctp_tmit_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct sctp_tmit_chunk*,int ) ;
 struct sctp_tmit_chunk* TAILQ_LAST (int *,int ) ;
 struct sctp_tmit_chunk* TAILQ_PREV (struct sctp_tmit_chunk*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct sctp_tmit_chunk*,int ) ;
 int atomic_add_int (int *,int) ;
 int sctp_audit_log (int,int) ;
 int sctp_flight_size_increase (struct sctp_tmit_chunk*) ;
 int sctp_log_rwnd (int ,scalar_t__,scalar_t__,int) ;
 int sctp_logging_level ;
 int sctp_misc_ints (int ,int ,int ,int ,int ) ;
 int sctp_next ;
 int sctp_peer_chunk_oh ;
 scalar_t__ sctp_sbspace_sub (scalar_t__,int ) ;
 int sctp_total_flight_increase (struct sctp_tcb*,struct sctp_tmit_chunk*) ;
 int sctpchunk_listhead ;
 int sctps_windowprobed ;
 int stub1 (struct sctp_tcb*,struct sctp_nets*) ;

__attribute__((used)) static void
sctp_clean_up_datalist(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    struct sctp_tmit_chunk **data_list,
    int bundle_at,
    struct sctp_nets *net)
{
 int i;
 struct sctp_tmit_chunk *tp1;

 for (i = 0; i < bundle_at; i++) {

  TAILQ_REMOVE(&asoc->send_queue, data_list[i], sctp_next);
  asoc->send_queue_cnt--;
  if (i > 0) {





   data_list[i]->do_rtt = 0;
  }

  data_list[i]->sent_rcv_time = net->last_sent_time;
  data_list[i]->rec.data.cwnd_at_send = net->cwnd;
  data_list[i]->rec.data.fast_retran_tsn = data_list[i]->rec.data.tsn;
  if (data_list[i]->whoTo == ((void*)0)) {
   data_list[i]->whoTo = net;
   atomic_add_int(&net->ref_count, 1);
  }

  tp1 = TAILQ_LAST(&asoc->sent_queue, sctpchunk_listhead);
  if ((tp1) && SCTP_TSN_GT(tp1->rec.data.tsn, data_list[i]->rec.data.tsn)) {
   struct sctp_tmit_chunk *tpp;


 back_up_more:
   tpp = TAILQ_PREV(tp1, sctpchunk_listhead, sctp_next);
   if (tpp == ((void*)0)) {
    TAILQ_INSERT_BEFORE(tp1, data_list[i], sctp_next);
    goto all_done;
   }
   tp1 = tpp;
   if (SCTP_TSN_GT(tp1->rec.data.tsn, data_list[i]->rec.data.tsn)) {
    goto back_up_more;
   }
   TAILQ_INSERT_AFTER(&asoc->sent_queue, tp1, data_list[i], sctp_next);
  } else {
   TAILQ_INSERT_TAIL(&asoc->sent_queue,
       data_list[i],
       sctp_next);
  }
all_done:

  asoc->sent_queue_cnt++;
  if ((asoc->peers_rwnd <= 0) &&
      (asoc->total_flight == 0) &&
      (bundle_at == 1)) {

   SCTP_STAT_INCR(sctps_windowprobed);
  }



  data_list[i]->sent = SCTP_DATAGRAM_SENT;
  data_list[i]->snd_count = 1;
  data_list[i]->rec.data.chunk_was_revoked = 0;
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_FLIGHT_LOGGING_ENABLE) {
   sctp_misc_ints(SCTP_FLIGHT_LOG_UP,
       data_list[i]->whoTo->flight_size,
       data_list[i]->book_size,
       (uint32_t)(uintptr_t)data_list[i]->whoTo,
       data_list[i]->rec.data.tsn);
  }
  sctp_flight_size_increase(data_list[i]);
  sctp_total_flight_increase(stcb, data_list[i]);
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_LOG_RWND_ENABLE) {
   sctp_log_rwnd(SCTP_DECREASE_PEER_RWND,
       asoc->peers_rwnd, data_list[i]->send_size, SCTP_BASE_SYSCTL(sctp_peer_chunk_oh));
  }
  asoc->peers_rwnd = sctp_sbspace_sub(asoc->peers_rwnd,
      (uint32_t)(data_list[i]->send_size + SCTP_BASE_SYSCTL(sctp_peer_chunk_oh)));
  if (asoc->peers_rwnd < stcb->sctp_ep->sctp_ep.sctp_sws_sender) {

   asoc->peers_rwnd = 0;
  }
 }
 if (asoc->cc_functions.sctp_cwnd_update_packet_transmitted) {
  (*asoc->cc_functions.sctp_cwnd_update_packet_transmitted) (stcb, net);
 }
}
