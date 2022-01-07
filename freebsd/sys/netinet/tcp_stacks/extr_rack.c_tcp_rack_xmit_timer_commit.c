
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct tcpcb {int t_srtt; int t_rttvar; int t_rttbest; scalar_t__ t_softerror; int t_rxtcur; scalar_t__ t_rxtshift; int t_stats; int t_rttupdated; scalar_t__ t_fb_ptr; } ;
struct TYPE_3__ {int rs_flags; int rs_rtt_lowest; int rs_rtt_highest; int rs_rtt_tot; scalar_t__ rs_rtt_cnt; } ;
struct TYPE_4__ {scalar_t__ rc_rate_sample_method; TYPE_1__ rack_rs; } ;
struct tcp_rack {TYPE_2__ r_ctl; } ;
typedef int int32_t ;


 int MSEC_2_TICKS (int ) ;
 int RACK_RTT_EMPTY ;
 int TCPSTAT_INC (int ) ;
 int TCPT_RANGESET (int ,int ,int ,int ) ;
 int TCP_DELTA_SHIFT ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TCP_RTTVAR_SHIFT ;
 int TCP_RTT_SHIFT ;
 scalar_t__ USE_RTT_AVG ;
 scalar_t__ USE_RTT_HIGH ;
 scalar_t__ USE_RTT_LOW ;
 int VOI_TCP_RTT ;
 int imax (int ,int) ;
 int max (int ,int) ;
 int panic (char*,scalar_t__) ;
 int rack_log_rtt_sample (struct tcp_rack*,int) ;
 int rack_log_rtt_upd (struct tcpcb*,struct tcp_rack*,int,int,int) ;
 int rack_rto_max ;
 int rack_rto_min ;
 int stats_voi_update_abs_u32 (int ,int ,int ) ;
 int tcps_rttupdated ;

__attribute__((used)) static void
tcp_rack_xmit_timer_commit(struct tcp_rack *rack, struct tcpcb *tp)
{
 int32_t delta;
 uint32_t o_srtt, o_var;
 int32_t rtt;

 if (rack->r_ctl.rack_rs.rs_flags & RACK_RTT_EMPTY)

  return;
 if (rack->r_ctl.rc_rate_sample_method == USE_RTT_LOW) {

  rtt = rack->r_ctl.rack_rs.rs_rtt_lowest;
 } else if (rack->r_ctl.rc_rate_sample_method == USE_RTT_HIGH) {

  rtt = rack->r_ctl.rack_rs.rs_rtt_highest;
 } else if (rack->r_ctl.rc_rate_sample_method == USE_RTT_AVG) {

  rtt = (int32_t)(rack->r_ctl.rack_rs.rs_rtt_tot /
    (uint64_t)rack->r_ctl.rack_rs.rs_rtt_cnt);
 } else {



  return;
 }
 if (rtt == 0)
  rtt = 1;
 rack_log_rtt_sample(rack, rtt);
 o_srtt = tp->t_srtt;
 o_var = tp->t_rttvar;
 rack = (struct tcp_rack *)tp->t_fb_ptr;
 if (tp->t_srtt != 0) {







  delta = ((rtt - 1) << TCP_DELTA_SHIFT)
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





  tp->t_srtt = rtt << TCP_RTT_SHIFT;
  tp->t_rttvar = rtt << (TCP_RTTVAR_SHIFT - 1);
  tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
 }
 TCPSTAT_INC(tcps_rttupdated);
 rack_log_rtt_upd(tp, rack, rtt, o_srtt, o_var);
 tp->t_rttupdated++;



 tp->t_rxtshift = 0;
 TCPT_RANGESET(tp->t_rxtcur, TCP_REXMTVAL(tp),
    max(MSEC_2_TICKS(rack_rto_min), rtt + 2), MSEC_2_TICKS(rack_rto_max));
 tp->t_softerror = 0;
}
