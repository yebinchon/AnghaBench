
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {scalar_t__ t_state; int t_flags; TYPE_1__* t_timers; } ;
struct TYPE_4__ {scalar_t__ rc_prr_sndcnt; int rc_hpts_flags; int rc_tmap; int rc_resend; int rc_timer_exp; } ;
struct tcp_rack {scalar_t__ r_state; int rc_rack_rtt; TYPE_2__ r_ctl; scalar_t__ use_rack_cheat; } ;
struct rack_sendmap {scalar_t__ r_end; scalar_t__ r_start; } ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int tt_flags; } ;


 scalar_t__ IN_RECOVERY (int ) ;
 int M_NOWAIT ;
 int PACE_TMR_RACK ;
 int RACK_TO_FRM_RACK ;
 int TAILQ_FIRST (int *) ;
 scalar_t__ TSTMP_LT (int,int ) ;
 int TT_STOPPED ;
 int counter_u64_add (int ,int) ;
 scalar_t__ ctf_fixed_maxseg (struct tcpcb*) ;
 struct rack_sendmap* rack_check_recovery_mode (struct tcpcb*,int) ;
 int rack_log_to_event (struct tcp_rack*,int ,scalar_t__) ;
 int rack_log_to_prr (struct tcp_rack*,int) ;
 int rack_set_state (struct tcpcb*,struct tcp_rack*) ;
 int rack_tlp_does_nada ;
 int rack_to_tot ;
 int tcp_log_dump_tp_logbuf (struct tcpcb*,char*,int ,int) ;

__attribute__((used)) static int
rack_timeout_rack(struct tcpcb *tp, struct tcp_rack *rack, uint32_t cts)
{







 struct rack_sendmap *rsm;
 int32_t recovery, ll;

 if (tp->t_timers->tt_flags & TT_STOPPED) {
  return (1);
 }
 if (TSTMP_LT(cts, rack->r_ctl.rc_timer_exp)) {

  return (0);
 }
 recovery = IN_RECOVERY(tp->t_flags);
 counter_u64_add(rack_to_tot, 1);
 if (rack->r_state && (rack->r_state != tp->t_state))
  rack_set_state(tp, rack);
 rsm = rack_check_recovery_mode(tp, cts);
 if (rsm)
  ll = rsm->r_end - rsm->r_start;
 else
  ll = 0;
 rack_log_to_event(rack, RACK_TO_FRM_RACK, ll);
 if (rsm) {
  uint32_t rtt;

  rtt = rack->rc_rack_rtt;
  if (rtt == 0)
   rtt = 1;
  if ((recovery == 0) &&
      (rack->r_ctl.rc_prr_sndcnt < ctf_fixed_maxseg(tp))) {






   rack->r_ctl.rc_prr_sndcnt = ctf_fixed_maxseg(tp);
   rack_log_to_prr(rack, 3);
  } else if ((rack->r_ctl.rc_prr_sndcnt < (rsm->r_end - rsm->r_start)) &&
      rack->use_rack_cheat) {




   rack->r_ctl.rc_prr_sndcnt = ctf_fixed_maxseg(tp);
   rack_log_to_prr(rack, 4);
  }
 } else {

  counter_u64_add(rack_tlp_does_nada, 1);



  rack->r_ctl.rc_resend = TAILQ_FIRST(&rack->r_ctl.rc_tmap);
 }
 rack->r_ctl.rc_hpts_flags &= ~PACE_TMR_RACK;
 return (0);
}
