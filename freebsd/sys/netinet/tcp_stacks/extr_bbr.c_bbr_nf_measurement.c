
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int rc_del_time; int rc_delivered; int last_inbound_ts; int bbr_peer_tsratio; int rc_bbr_cur_del_rate; int rc_delrate; } ;
struct tcp_bbr {scalar_t__ rc_in_persist; scalar_t__ rc_ts_cant_be_used; TYPE_1__ r_ctl; scalar_t__ ts_can_raise; scalar_t__ rc_use_ts_limit; scalar_t__ rc_ts_clock_set; scalar_t__ rc_ts_valid; } ;
struct bbr_sendmap {int r_del_time; int r_delivered; int r_del_ack_ts; int r_first_sent_time; int* r_tim_lastsent; int r_rtr_cnt; scalar_t__ r_app_limited; scalar_t__ r_pacing_delay; scalar_t__ r_flight_at_send; scalar_t__ r_ts_valid; } ;


 scalar_t__ TSTMP_GT (int,int) ;
 scalar_t__ USECS_IN_SECOND ;
 int bbr_log_type_bbrupd (struct tcp_bbr*,int,int,int,int,int,int,int,int ,int,int) ;
 int get_filter_value (int *) ;
 int max (int,int) ;
 int tcp_bbr_commit_bw (struct tcp_bbr*,int) ;

__attribute__((used)) static void
bbr_nf_measurement(struct tcp_bbr *bbr, struct bbr_sendmap *rsm, uint32_t rtt, uint32_t cts)
{
 if (bbr->rc_in_persist == 0) {


  uint64_t tim, bw, ts_diff, ts_bw;
  uint32_t upper, lower, delivered;

  if (TSTMP_GT(bbr->r_ctl.rc_del_time, rsm->r_del_time))
   tim = (uint64_t)(bbr->r_ctl.rc_del_time - rsm->r_del_time);
  else
   tim = 1;





  delivered = (bbr->r_ctl.rc_delivered - rsm->r_delivered);
  bw = (uint64_t)delivered;
  bw *= (uint64_t)USECS_IN_SECOND;
  bw /= tim;
  if (bw == 0) {

   return;
  }
  upper = (bw >> 32) & 0x00000000ffffffff;
  lower = bw & 0x00000000ffffffff;




  if (rsm->r_ts_valid &&
      bbr->rc_ts_valid &&
      bbr->rc_ts_clock_set &&
      (bbr->rc_ts_cant_be_used == 0) &&
      bbr->rc_use_ts_limit) {
   ts_diff = max((bbr->r_ctl.last_inbound_ts - rsm->r_del_ack_ts), 1);
   ts_diff *= bbr->r_ctl.bbr_peer_tsratio;
   if ((delivered == 0) ||
       (rtt < 1000)) {

    bbr_log_type_bbrupd(bbr, 61, cts,
          ts_diff,
          bbr->r_ctl.last_inbound_ts,
          rsm->r_del_ack_ts, 0,
          0, 0, 0, delivered);
   } else {
    ts_bw = (uint64_t)delivered;
    ts_bw *= (uint64_t)USECS_IN_SECOND;
    ts_bw /= ts_diff;
    bbr_log_type_bbrupd(bbr, 62, cts,
          (ts_bw >> 32),
          (ts_bw & 0xffffffff), 0, 0,
          0, 0, ts_diff, delivered);
    if ((bbr->ts_can_raise) &&
        (ts_bw > bw)) {
     bbr_log_type_bbrupd(bbr, 8, cts,
           delivered,
           ts_diff,
           (bw >> 32),
           (bw & 0x00000000ffffffff),
           0, 0, 0, 0);
     bw = ts_bw;
    } else if (ts_bw && (ts_bw < bw)) {
     bbr_log_type_bbrupd(bbr, 7, cts,
           delivered,
           ts_diff,
           (bw >> 32),
           (bw & 0x00000000ffffffff),
           0, 0, 0, 0);
     bw = ts_bw;
    }
   }
  }
  if (rsm->r_first_sent_time &&
      TSTMP_GT(rsm->r_tim_lastsent[(rsm->r_rtr_cnt -1)],rsm->r_first_sent_time)) {
   uint64_t sbw, sti;
   sbw = (uint64_t)(rsm->r_flight_at_send);
   sbw *= (uint64_t)USECS_IN_SECOND;
   sti = rsm->r_tim_lastsent[(rsm->r_rtr_cnt -1)] - rsm->r_first_sent_time;
   sti += rsm->r_pacing_delay;
   sbw /= sti;
   if (sbw < bw) {
    bbr_log_type_bbrupd(bbr, 6, cts,
          delivered,
          (uint32_t)sti,
          (bw >> 32),
          (uint32_t)bw,
          rsm->r_first_sent_time, 0, (sbw >> 32),
          (uint32_t)sbw);
    bw = sbw;
   }
  }

  bbr->r_ctl.rc_bbr_cur_del_rate = bw;
  if ((rsm->r_app_limited == 0) ||
      (bw > get_filter_value(&bbr->r_ctl.rc_delrate))) {
   tcp_bbr_commit_bw(bbr, cts);
   bbr_log_type_bbrupd(bbr, 10, cts, (uint32_t)tim, delivered,
         0, 0, 0, 0, bbr->r_ctl.rc_del_time, rsm->r_del_time);
  }
 }
}
