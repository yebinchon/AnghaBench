
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {unsigned int max_burst; int my_vtag; scalar_t__ seen_a_sack_this_pkt; } ;
struct sctp_tcb {int rport; TYPE_1__* sctp_ep; TYPE_2__ asoc; } ;
struct sctp_pktdrop_chunk {int current_onq; int bottle_bw; } ;
struct sctp_nets {int cwnd; scalar_t__ flight_size; int rtt; int prev_cwnd; int mtu; int ssthresh; scalar_t__ partial_bytes_acked; } ;
struct TYPE_3__ {int sctp_lport; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_CWND_LOG_FROM_SAT ;
 int SCTP_CWND_MONITOR_ENABLE ;
 int SDT_PROBE5 (int ,int ,struct sctp_nets*,int ,int ,int,struct sctp_nets*,int,scalar_t__) ;
 int cwnd ;
 scalar_t__ ntohl (int ) ;
 int pd ;
 int sctp ;
 int sctp_enforce_cwnd_limit (TYPE_2__*,struct sctp_nets*) ;
 int sctp_log_cwnd (struct sctp_tcb*,struct sctp_nets*,scalar_t__,int ) ;
 int sctp_logging_level ;

__attribute__((used)) static void
sctp_cwnd_update_after_packet_dropped(struct sctp_tcb *stcb,
    struct sctp_nets *net, struct sctp_pktdrop_chunk *cp,
    uint32_t *bottle_bw, uint32_t *on_queue)
{
 uint32_t bw_avail;
 unsigned int incr;
 int old_cwnd = net->cwnd;


 *bottle_bw = ntohl(cp->bottle_bw);

 *on_queue = ntohl(cp->current_onq);




 if (*on_queue < net->flight_size) {
  *on_queue = net->flight_size;
 }

 bw_avail = (uint32_t)(((uint64_t)(*bottle_bw) * net->rtt) / (uint64_t)1000000);
 if (bw_avail > *bottle_bw) {
  bw_avail = *bottle_bw;
 }
 if (*on_queue > bw_avail) {




  int seg_inflight, seg_onqueue, my_portion;

  net->partial_bytes_acked = 0;

  incr = *on_queue - bw_avail;
  if (stcb->asoc.seen_a_sack_this_pkt) {




   net->cwnd = net->prev_cwnd;
  }

  seg_inflight = net->flight_size / net->mtu;
  seg_onqueue = *on_queue / net->mtu;
  my_portion = (incr * seg_inflight) / seg_onqueue;


  if (net->cwnd > net->flight_size) {





   int diff_adj;

   diff_adj = net->cwnd - net->flight_size;
   if (diff_adj > my_portion)
    my_portion = 0;
   else
    my_portion -= diff_adj;
  }





  net->cwnd -= my_portion;


  if (net->cwnd <= net->mtu) {
   net->cwnd = net->mtu;
  }

  net->ssthresh = net->cwnd - 1;
 } else {




  incr = (bw_avail - *on_queue) >> 2;
  if ((stcb->asoc.max_burst > 0) &&
      (stcb->asoc.max_burst * net->mtu < incr)) {
   incr = stcb->asoc.max_burst * net->mtu;
  }
  net->cwnd += incr;
 }
 if (net->cwnd > bw_avail) {

  net->cwnd = bw_avail;
 }
 if (net->cwnd < net->mtu) {

  net->cwnd = net->mtu;
 }
 sctp_enforce_cwnd_limit(&stcb->asoc, net);
 if (net->cwnd - old_cwnd != 0) {

  SDT_PROBE5(sctp, cwnd, net, pd,
      stcb->asoc.my_vtag,
      ((stcb->sctp_ep->sctp_lport << 16) | (stcb->rport)),
      net,
      old_cwnd, net->cwnd);
  if (SCTP_BASE_SYSCTL(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
   sctp_log_cwnd(stcb, net, (net->cwnd - old_cwnd),
       SCTP_CWND_LOG_FROM_SAT);
  }
 }
}
