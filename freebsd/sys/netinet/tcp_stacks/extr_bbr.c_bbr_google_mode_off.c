
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_incr_tmrs; int rc_inc_tcp_oh; int rc_inc_ip_oh; int rc_inc_enet_oh; int rc_rttprop; int rc_delrate; int rc_probertt_int; scalar_t__ bbr_google_discount; } ;
struct tcp_bbr {int rc_no_pacing; int bbr_use_rack_cheat; int rc_tv; TYPE_1__ r_ctl; scalar_t__ no_pacing_until; scalar_t__ r_use_policer; scalar_t__ rc_use_google; } ;


 int USECS_IN_SECOND ;
 int bbr_filter_len_sec ;
 scalar_t__ bbr_include_enet_oh ;
 scalar_t__ bbr_include_ip_oh ;
 scalar_t__ bbr_include_tcp_oh ;
 scalar_t__ bbr_incr_timers ;
 scalar_t__ bbr_no_pacing_until ;
 int bbr_num_pktepo_for_del_limit ;
 int bbr_rtt_probe_limit ;
 scalar_t__ bbr_use_rack_resend_cheat ;
 int reset_time (int *,int ) ;
 int reset_time_small (int *,int) ;
 int tcp_bbr_tso_size_check (struct tcp_bbr*,int ) ;
 int tcp_get_usecs (int *) ;

__attribute__((used)) static void
bbr_google_mode_off(struct tcp_bbr *bbr)
{
 bbr->rc_use_google = 0;
 bbr->r_ctl.bbr_google_discount = 0;
 bbr->no_pacing_until = bbr_no_pacing_until;
 bbr->r_use_policer = 0;
 if (bbr->no_pacing_until)
  bbr->rc_no_pacing = 1;
 else
  bbr->rc_no_pacing = 0;
 if (bbr_use_rack_resend_cheat)
  bbr->bbr_use_rack_cheat = 1;
 else
  bbr->bbr_use_rack_cheat = 0;
 if (bbr_incr_timers)
  bbr->r_ctl.rc_incr_tmrs = 1;
 else
  bbr->r_ctl.rc_incr_tmrs = 0;
 if (bbr_include_tcp_oh)
  bbr->r_ctl.rc_inc_tcp_oh = 1;
 else
  bbr->r_ctl.rc_inc_tcp_oh = 0;
 if (bbr_include_ip_oh)
  bbr->r_ctl.rc_inc_ip_oh = 1;
 else
  bbr->r_ctl.rc_inc_ip_oh = 0;
 if (bbr_include_enet_oh)
  bbr->r_ctl.rc_inc_enet_oh = 1;
 else
  bbr->r_ctl.rc_inc_enet_oh = 0;
 bbr->r_ctl.rc_probertt_int = bbr_rtt_probe_limit;
 reset_time(&bbr->r_ctl.rc_delrate,
     bbr_num_pktepo_for_del_limit);
 reset_time_small(&bbr->r_ctl.rc_rttprop,
    (bbr_filter_len_sec * USECS_IN_SECOND));
 tcp_bbr_tso_size_check(bbr, tcp_get_usecs(&bbr->rc_tv));
}
