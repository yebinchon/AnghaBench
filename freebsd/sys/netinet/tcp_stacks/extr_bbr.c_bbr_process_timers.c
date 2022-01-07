
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct tcpcb {scalar_t__ t_state; int t_inpcb; } ;
struct TYPE_2__ {int rc_hpts_flags; int rc_timer_exp; int rc_tlp_rxt_last_time; } ;
struct tcp_bbr {TYPE_1__ r_ctl; scalar_t__ rc_tmr_stopped; } ;
typedef int int32_t ;


 int HPTS_USEC_TO_SLOTS (int) ;
 int PACE_PKT_OUTPUT ;
 int PACE_TMR_DELACK ;
 int PACE_TMR_KEEP ;
 int PACE_TMR_MASK ;
 int PACE_TMR_PERSIT ;
 int PACE_TMR_RACK ;
 int PACE_TMR_RXT ;
 int PACE_TMR_TLP ;
 scalar_t__ TCPS_LISTEN ;
 scalar_t__ TSTMP_LT (int,int) ;
 int bbr_log_to_processing (struct tcp_bbr*,int,int,int,int ) ;
 int bbr_timeout_delack (struct tcpcb*,struct tcp_bbr*,int) ;
 int bbr_timeout_keepalive (struct tcpcb*,struct tcp_bbr*,int) ;
 int bbr_timeout_persist (struct tcpcb*,struct tcp_bbr*,int) ;
 int bbr_timeout_rack (struct tcpcb*,struct tcp_bbr*,int) ;
 int bbr_timeout_rxt (struct tcpcb*,struct tcp_bbr*,int) ;
 int bbr_timeout_tlp (struct tcpcb*,struct tcp_bbr*,int) ;
 int tcp_hpts_insert (int ,int ) ;

__attribute__((used)) static int
bbr_process_timers(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts, uint8_t hpts_calling)
{
 int32_t ret = 0;
 int32_t timers = (bbr->r_ctl.rc_hpts_flags & PACE_TMR_MASK);

 if (timers == 0) {
  return (0);
 }
 if (tp->t_state == TCPS_LISTEN) {

  if (bbr->r_ctl.rc_hpts_flags & PACE_PKT_OUTPUT)
   return (0);
  return (1);
 }
 if (TSTMP_LT(cts, bbr->r_ctl.rc_timer_exp)) {
  uint32_t left;

  if (bbr->r_ctl.rc_hpts_flags & PACE_PKT_OUTPUT) {
   ret = -1;
   bbr_log_to_processing(bbr, cts, ret, 0, hpts_calling);
   return (0);
  }
  if (hpts_calling == 0) {
   ret = -2;
   bbr_log_to_processing(bbr, cts, ret, 0, hpts_calling);
   return (0);
  }




  left = bbr->r_ctl.rc_timer_exp - cts;
  ret = -3;
  bbr_log_to_processing(bbr, cts, ret, left, hpts_calling);
  tcp_hpts_insert(tp->t_inpcb, HPTS_USEC_TO_SLOTS(left));
  return (1);
 }
 bbr->rc_tmr_stopped = 0;
 bbr->r_ctl.rc_hpts_flags &= ~PACE_TMR_MASK;
 if (timers & PACE_TMR_DELACK) {
  ret = bbr_timeout_delack(tp, bbr, cts);
 } else if (timers & PACE_TMR_PERSIT) {
  ret = bbr_timeout_persist(tp, bbr, cts);
 } else if (timers & PACE_TMR_RACK) {
  bbr->r_ctl.rc_tlp_rxt_last_time = cts;
  ret = bbr_timeout_rack(tp, bbr, cts);
 } else if (timers & PACE_TMR_TLP) {
  bbr->r_ctl.rc_tlp_rxt_last_time = cts;
  ret = bbr_timeout_tlp(tp, bbr, cts);
 } else if (timers & PACE_TMR_RXT) {
  bbr->r_ctl.rc_tlp_rxt_last_time = cts;
  ret = bbr_timeout_rxt(tp, bbr, cts);
 } else if (timers & PACE_TMR_KEEP) {
  ret = bbr_timeout_keepalive(tp, bbr, cts);
 }
 bbr_log_to_processing(bbr, cts, ret, timers, hpts_calling);
 return (ret);
}
