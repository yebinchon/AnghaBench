
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ bbr_rttprobe_gain_val; scalar_t__ rc_bbr_hptsi_gain; int rc_target_at_state; } ;
struct tcp_bbr {scalar_t__ rc_bbr_state; int rc_last_options; TYPE_2__ r_ctl; scalar_t__ rc_use_google; TYPE_1__* rc_tp; } ;
struct TYPE_3__ {int t_maxseg; } ;


 scalar_t__ BBR_STATE_PROBE_BW ;
 scalar_t__ BBR_STATE_PROBE_RTT ;
 size_t BBR_SUB_DRAIN ;
 scalar_t__ BBR_UNIT ;
 int bbr_get_a_state_target (struct tcp_bbr*,scalar_t__) ;
 scalar_t__* bbr_hptsi_gain ;
 int bbr_log_set_of_state_target (struct tcp_bbr*,int,int,int) ;
 int bbr_rtt_probe_cwndtarg ;
 scalar_t__ bbr_target_is_bbunit ;

__attribute__((used)) static void
bbr_set_state_target(struct tcp_bbr *bbr, int line)
{
 uint32_t tar, meth;

 if ((bbr->rc_bbr_state == BBR_STATE_PROBE_RTT) &&
     ((bbr->r_ctl.bbr_rttprobe_gain_val == 0) || bbr->rc_use_google)) {

  tar = bbr_rtt_probe_cwndtarg * (bbr->rc_tp->t_maxseg - bbr->rc_last_options);
  meth = 1;
 } else {

  if ((bbr->rc_bbr_state == BBR_STATE_PROBE_BW) &&
      (bbr->r_ctl.rc_bbr_hptsi_gain > BBR_UNIT)) {

   tar = bbr_get_a_state_target(bbr, bbr->r_ctl.rc_bbr_hptsi_gain);
   meth = 2;
  } else if ((bbr_target_is_bbunit) || bbr->rc_use_google) {




   tar = bbr_get_a_state_target(bbr, BBR_UNIT);
   meth = 3;
  } else {





   if (bbr->r_ctl.rc_bbr_hptsi_gain < bbr_hptsi_gain[BBR_SUB_DRAIN]) {
    tar = bbr_get_a_state_target(bbr, bbr_hptsi_gain[BBR_SUB_DRAIN]);
    meth = 4;
   } else {
    tar = bbr_get_a_state_target(bbr, bbr->r_ctl.rc_bbr_hptsi_gain);
    meth = 5;
   }
  }
 }
 bbr_log_set_of_state_target(bbr, tar, line, meth);
 bbr->r_ctl.rc_target_at_state = tar;
}
