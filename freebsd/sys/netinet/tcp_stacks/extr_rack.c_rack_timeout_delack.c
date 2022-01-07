
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_flags; TYPE_1__* t_timers; } ;
struct TYPE_4__ {int rc_hpts_flags; } ;
struct tcp_rack {TYPE_2__ r_ctl; } ;
struct TYPE_3__ {int tt_flags; } ;


 int PACE_TMR_DELACK ;
 int RACK_TO_FRM_DELACK ;
 int TCPSTAT_INC (int ) ;
 int TF_ACKNOW ;
 int TF_DELACK ;
 int TT_STOPPED ;
 int rack_log_to_event (struct tcp_rack*,int ,int ) ;
 int tcps_delack ;

__attribute__((used)) static int
rack_timeout_delack(struct tcpcb *tp, struct tcp_rack *rack, uint32_t cts)
{
 if (tp->t_timers->tt_flags & TT_STOPPED) {
  return (1);
 }
 rack_log_to_event(rack, RACK_TO_FRM_DELACK, 0);
 tp->t_flags &= ~TF_DELACK;
 tp->t_flags |= TF_ACKNOW;
 TCPSTAT_INC(tcps_delack);
 rack->r_ctl.rc_hpts_flags &= ~PACE_TMR_DELACK;
 return (0);
}
