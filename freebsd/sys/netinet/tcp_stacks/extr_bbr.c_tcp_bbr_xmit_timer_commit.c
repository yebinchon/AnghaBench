
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {int t_srtt; int t_rttvar; int t_rttbest; scalar_t__ t_softerror; int t_rxtcur; int t_stats; int t_rttupdated; } ;
struct TYPE_4__ {scalar_t__ cur_rtt; scalar_t__ ts_in; scalar_t__ rc_lowest_rtt; scalar_t__ rc_min_rto_ms; scalar_t__ bbr_smallest_srtt_this_state; int cur_rtt_send_time; int bbr_ts_check_our_cts; int last_inbound_ts; int bbr_ts_check_tstmp; scalar_t__ rc_ack_hdwr_delay; int rc_rttprop; } ;
struct tcp_bbr {scalar_t__ rtt_valid; scalar_t__ rc_ts_clock_set; int rc_ts_data_set; TYPE_2__ r_ctl; TYPE_1__* rc_tp; scalar_t__ rc_max_rto_sec; scalar_t__ rc_ack_is_cumack; scalar_t__ rc_ts_valid; scalar_t__ r_init_rtt; scalar_t__ rc_ack_was_delayed; scalar_t__ rc_prtt_set_ts; } ;
typedef int int32_t ;
struct TYPE_3__ {int t_srtt; } ;


 int MSEC_2_TICKS (scalar_t__) ;
 int TCPSTAT_INC (int ) ;
 int TCPT_RANGESET (int ,int ,int ,int ) ;
 int TCP_DELTA_SHIFT ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TCP_RTTVAR_SHIFT ;
 int TCP_RTT_SHIFT ;
 int TICKS_2_USEC (int ) ;
 int USECS_IN_MSEC ;
 int USEC_2_TICKS (int) ;
 int VOI_TCP_RTT ;
 int apply_filter_min_small (int *,scalar_t__,scalar_t__) ;
 int bbr_log_rtt_sample (struct tcp_bbr*,scalar_t__,scalar_t__) ;
 int bbr_make_timestamp_determination (struct tcp_bbr*) ;
 int filter_increase_by_small (int *,scalar_t__,scalar_t__) ;
 scalar_t__ get_filter_value_small (int *) ;
 int imax (int ,int) ;
 int max (int ,int) ;
 int stats_voi_update_abs_u32 (int ,int ,int ) ;
 int tcps_rttupdated ;

__attribute__((used)) static void
tcp_bbr_xmit_timer_commit(struct tcp_bbr *bbr, struct tcpcb *tp, uint32_t cts)
{
 int32_t delta;
 uint32_t rtt, tsin;
 int32_t rtt_ticks;


 if (bbr->rtt_valid == 0)

  return;

 rtt = bbr->r_ctl.cur_rtt;
 tsin = bbr->r_ctl.ts_in;
 if (bbr->rc_prtt_set_ts) {
  uint32_t rtt_prop;

  bbr->rc_prtt_set_ts = 0;
  rtt_prop = get_filter_value_small(&bbr->r_ctl.rc_rttprop);
  if (rtt > rtt_prop)
   filter_increase_by_small(&bbr->r_ctl.rc_rttprop, (rtt - rtt_prop), cts);
  else
   apply_filter_min_small(&bbr->r_ctl.rc_rttprop, rtt, cts);
 }
 if (bbr->rc_ack_was_delayed)
  rtt += bbr->r_ctl.rc_ack_hdwr_delay;

 if (rtt < bbr->r_ctl.rc_lowest_rtt)
  bbr->r_ctl.rc_lowest_rtt = rtt;
 bbr_log_rtt_sample(bbr, rtt, tsin);
 if (bbr->r_init_rtt) {




  bbr->r_init_rtt = 0;
  tp->t_srtt = 0;
 }
 if ((bbr->rc_ts_clock_set == 0) && bbr->rc_ts_valid) {







  if (bbr->rc_ack_is_cumack) {
   if (bbr->rc_ts_data_set) {

    bbr_make_timestamp_determination(bbr);
   } else {
    bbr->rc_ts_data_set = 1;
    bbr->r_ctl.bbr_ts_check_tstmp = bbr->r_ctl.last_inbound_ts;
    bbr->r_ctl.bbr_ts_check_our_cts = bbr->r_ctl.cur_rtt_send_time;
   }
  } else {




   bbr->rc_ts_data_set = 0;
  }
 }

 rtt_ticks = USEC_2_TICKS((rtt + (USECS_IN_MSEC - 1)));
 if (rtt_ticks == 0)
  rtt_ticks = 1;
 if (tp->t_srtt != 0) {
  delta = ((rtt_ticks - 1) << TCP_DELTA_SHIFT)
      - (tp->t_srtt >> (TCP_RTT_SHIFT - TCP_DELTA_SHIFT));

  tp->t_srtt += delta;
  if (tp->t_srtt <= 0)
   tp->t_srtt = 1;
  if (delta < 0)
   delta = -delta;
  delta -= tp->t_rttvar >> (TCP_RTTVAR_SHIFT - TCP_DELTA_SHIFT);
  tp->t_rttvar += delta;
  if (tp->t_rttvar <= 0)
   tp->t_rttvar = 1;
  if (tp->t_rttbest > tp->t_srtt + tp->t_rttvar)
   tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
 } else {





  tp->t_srtt = rtt_ticks << TCP_RTT_SHIFT;
  tp->t_rttvar = rtt_ticks << (TCP_RTTVAR_SHIFT - 1);
  tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
 }
 TCPSTAT_INC(tcps_rttupdated);
 tp->t_rttupdated++;
 TCPT_RANGESET(tp->t_rxtcur, TCP_REXMTVAL(tp),
     max(MSEC_2_TICKS(bbr->r_ctl.rc_min_rto_ms), rtt_ticks + 2),
     MSEC_2_TICKS(((uint32_t)bbr->rc_max_rto_sec) * 1000));
 tp->t_softerror = 0;
 rtt = (TICKS_2_USEC(bbr->rc_tp->t_srtt) >> TCP_RTT_SHIFT);
 if (bbr->r_ctl.bbr_smallest_srtt_this_state > rtt)
  bbr->r_ctl.bbr_smallest_srtt_this_state = rtt;
}
