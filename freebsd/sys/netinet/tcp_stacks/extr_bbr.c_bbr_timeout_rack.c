
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ t_state; } ;
struct TYPE_2__ {scalar_t__ rc_lost; int rc_hpts_flags; int * rc_resend; int rc_timer_exp; } ;
struct tcp_bbr {scalar_t__ r_state; TYPE_1__ r_ctl; scalar_t__ rc_all_timers_stopped; } ;


 int BBR_STAT_INC (int ) ;
 int BBR_TO_FRM_RACK ;
 int PACE_TMR_RACK ;
 scalar_t__ TSTMP_LT (scalar_t__,int ) ;
 int * bbr_check_recovery_mode (struct tcpcb*,struct tcp_bbr*,scalar_t__) ;
 int bbr_log_to_event (struct tcp_bbr*,scalar_t__,int ) ;
 int bbr_lt_bw_sampling (struct tcp_bbr*,scalar_t__,int) ;
 scalar_t__ bbr_policer_call_from_rack_to ;
 int bbr_set_state (struct tcpcb*,struct tcp_bbr*,int ) ;
 int bbr_to_tot ;

__attribute__((used)) static int
bbr_timeout_rack(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{







 uint32_t lost;

 if (bbr->rc_all_timers_stopped) {
  return (1);
 }
 if (TSTMP_LT(cts, bbr->r_ctl.rc_timer_exp)) {

  return (0);
 }
 BBR_STAT_INC(bbr_to_tot);
 lost = bbr->r_ctl.rc_lost;
 if (bbr->r_state && (bbr->r_state != tp->t_state))
  bbr_set_state(tp, bbr, 0);
 bbr_log_to_event(bbr, cts, BBR_TO_FRM_RACK);
 if (bbr->r_ctl.rc_resend == ((void*)0)) {

  bbr->r_ctl.rc_resend = bbr_check_recovery_mode(tp, bbr, cts);
 }
 if (bbr_policer_call_from_rack_to)
  bbr_lt_bw_sampling(bbr, cts, (bbr->r_ctl.rc_lost > lost));
 bbr->r_ctl.rc_hpts_flags &= ~PACE_TMR_RACK;
 return (0);
}
