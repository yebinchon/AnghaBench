
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_flags; } ;
struct TYPE_2__ {int rc_hpts_flags; } ;
struct tcp_bbr {TYPE_1__ r_ctl; scalar_t__ rc_all_timers_stopped; } ;


 int BBR_TO_FRM_DELACK ;
 int PACE_TMR_DELACK ;
 int TCPSTAT_INC (int ) ;
 int TF_ACKNOW ;
 int TF_DELACK ;
 int bbr_log_to_event (struct tcp_bbr*,int ,int ) ;
 int tcps_delack ;

__attribute__((used)) static int
bbr_timeout_delack(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{
 if (bbr->rc_all_timers_stopped) {
  return (1);
 }
 bbr_log_to_event(bbr, cts, BBR_TO_FRM_DELACK);
 tp->t_flags &= ~TF_DELACK;
 tp->t_flags |= TF_ACKNOW;
 TCPSTAT_INC(tcps_delack);
 bbr->r_ctl.rc_hpts_flags &= ~PACE_TMR_DELACK;
 return (0);
}
