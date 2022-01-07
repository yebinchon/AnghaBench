
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_probertt_int; int rc_rttprop; int rc_delrate; scalar_t__ rc_inc_enet_oh; scalar_t__ rc_inc_ip_oh; scalar_t__ rc_inc_tcp_oh; scalar_t__ rc_incr_tmrs; int bbr_google_discount; } ;
struct tcp_bbr {int rc_use_google; int rc_tv; TYPE_1__ r_ctl; scalar_t__ bbr_use_rack_cheat; int r_use_policer; scalar_t__ rc_no_pacing; } ;


 int BBR_NUM_RTTS_FOR_GOOG_DEL_LIMIT ;
 int USECS_IN_SECOND ;
 int bbr_google_discount ;
 int bbr_policer_detection_enabled ;
 int reset_time (int *,int ) ;
 int reset_time_small (int *,int) ;
 int tcp_bbr_tso_size_check (struct tcp_bbr*,int ) ;
 int tcp_get_usecs (int *) ;

__attribute__((used)) static void
bbr_google_mode_on(struct tcp_bbr *bbr)
{
 bbr->rc_use_google = 1;
 bbr->rc_no_pacing = 0;
 bbr->r_ctl.bbr_google_discount = bbr_google_discount;
 bbr->r_use_policer = bbr_policer_detection_enabled;
 bbr->r_ctl.rc_probertt_int = (USECS_IN_SECOND * 10);
 bbr->bbr_use_rack_cheat = 0;
 bbr->r_ctl.rc_incr_tmrs = 0;
 bbr->r_ctl.rc_inc_tcp_oh = 0;
 bbr->r_ctl.rc_inc_ip_oh = 0;
 bbr->r_ctl.rc_inc_enet_oh = 0;
 reset_time(&bbr->r_ctl.rc_delrate,
     BBR_NUM_RTTS_FOR_GOOG_DEL_LIMIT);
 reset_time_small(&bbr->r_ctl.rc_rttprop,
    (11 * USECS_IN_SECOND));
 tcp_bbr_tso_size_check(bbr, tcp_get_usecs(&bbr->rc_tv));
}
