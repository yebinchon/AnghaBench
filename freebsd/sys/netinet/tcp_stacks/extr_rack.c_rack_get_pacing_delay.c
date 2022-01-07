
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct tcpcb {int t_srtt; int snd_cwnd; } ;
struct TYPE_2__ {int rc_rack_min_rtt; int rc_rack_largest_cwnd; scalar_t__ rc_gp_hist_filled; scalar_t__* rc_gp_history; } ;
struct tcp_rack {scalar_t__ rack_per_of_gp; scalar_t__ rc_always_pace; int rc_pace_reduce; int r_enforce_min_pace; TYPE_1__ r_ctl; } ;
typedef int int32_t ;


 int MSEC_IN_SECOND ;
 int RACK_GP_HIST ;
 int TCP_RTT_SHIFT ;
 int TICKS_2_MSEC (int) ;
 int counter_u64_add (int ,int) ;
 int ctf_fixed_maxseg (struct tcpcb*) ;
 int rack_calc_nonzero ;
 int rack_calc_zero ;

__attribute__((used)) static int32_t
rack_get_pacing_delay(struct tcp_rack *rack, struct tcpcb *tp, uint32_t len)
{
 int32_t slot = 0;

 if ((rack->rack_per_of_gp == 0) ||
     (rack->rc_always_pace == 0)) {







  uint32_t srtt, cwnd, tr_perms = 0;

old_method:
  if (rack->r_ctl.rc_rack_min_rtt)
   srtt = rack->r_ctl.rc_rack_min_rtt;
  else
   srtt = TICKS_2_MSEC((tp->t_srtt >> TCP_RTT_SHIFT));
  if (rack->r_ctl.rc_rack_largest_cwnd)
   cwnd = rack->r_ctl.rc_rack_largest_cwnd;
  else
   cwnd = tp->snd_cwnd;
  tr_perms = cwnd / srtt;
  if (tr_perms == 0) {
   tr_perms = ctf_fixed_maxseg(tp);
  }
  slot = len / tr_perms;

  if (slot && rack->rc_pace_reduce) {
   int32_t reduce;

   reduce = (slot / rack->rc_pace_reduce);
   if (reduce < slot) {
    slot -= reduce;
   } else
    slot = 0;
  }
 } else {
  int cnt;
  uint64_t bw_est, bw_raise, res, lentim;

  bw_est = 0;
  for (cnt=0; cnt<RACK_GP_HIST; cnt++) {
   if ((rack->r_ctl.rc_gp_hist_filled == 0) &&
       (rack->r_ctl.rc_gp_history[cnt] == 0))
    break;
   bw_est += rack->r_ctl.rc_gp_history[cnt];
  }
  if (bw_est == 0) {




   goto old_method;
  }

  bw_est *= MSEC_IN_SECOND;







  bw_raise = bw_est * (uint64_t)rack->rack_per_of_gp;
  bw_est += bw_raise;

  bw_est /= cnt;

  lentim = (uint64_t) len * (uint64_t)MSEC_IN_SECOND;
  res = lentim / bw_est;
  slot = (uint32_t)res;
 }
 if (rack->r_enforce_min_pace &&
     (slot == 0)) {

  slot = rack->r_enforce_min_pace;
 }
 if (slot)
  counter_u64_add(rack_calc_nonzero, 1);
 else
  counter_u64_add(rack_calc_zero, 1);
 return (slot);
}
