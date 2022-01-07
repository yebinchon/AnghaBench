
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int t_delayed_ack; } ;
struct TYPE_3__ {int cur_time_limit; } ;
struct TYPE_4__ {int bbr_hptsi_per_second; int bbr_hptsi_segments_delay_tar; int bbr_hptsi_segments_max; int bbr_hptsi_bytes_min; int bbr_cross_over; int rc_startup_pg; int rc_drain_pg; int rc_probertt_int; int bbr_rttprobe_gain_val; int rc_min_rto_ms; int rc_pace_max_segs; int rc_min_to; int rc_reorder_shift; int rc_reorder_fade; int bbr_hptsi_segments_floor; int bbr_utter_max; int rc_pkt_delay; int rc_incr_tmrs; int rc_inc_enet_oh; int rc_inc_ip_oh; int rc_inc_tcp_oh; TYPE_1__ rc_rttprop; } ;
struct tcp_bbr {int no_pacing_until; int rc_use_google; int rc_use_ts_limit; int rc_init_win; int rc_loss_exit; int rc_max_rto_sec; int bbr_use_rack_cheat; int bbr_init_win_cheat; int rc_use_idle_restart; int rc_tlp_threshold; int rc_resends_use_tso; int rc_allow_data_af_clo; int bbr_hdw_pace_ena; int r_use_policer; int ts_can_raise; TYPE_2__ r_ctl; } ;
struct sockopt {int sopt_name; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;
typedef int int32_t ;


 int BBR_INCL_ENET_OH ;
 int BBR_INCL_IP_OH ;
 int BBR_INCL_TCP_OH ;
 int EINVAL ;
 int INP_WUNLOCK (struct inpcb*) ;
 int USECS_IN_SECOND ;
 int sooptcopyout (struct sockopt*,int*,int) ;
 int tcp_default_ctloutput (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ;

__attribute__((used)) static int
bbr_get_sockopt(struct socket *so, struct sockopt *sopt,
    struct inpcb *inp, struct tcpcb *tp, struct tcp_bbr *bbr)
{
 int32_t error, optval;







 switch (sopt->sopt_name) {
 case 152:
  optval = bbr->r_ctl.bbr_hptsi_per_second;
  break;
 case 154:
  optval = bbr->r_ctl.bbr_hptsi_segments_delay_tar;
  break;
 case 151:
  optval = bbr->r_ctl.bbr_hptsi_segments_max;
  break;
 case 156:
  optval = bbr->no_pacing_until;
  break;
 case 150:
  optval = bbr->r_ctl.bbr_hptsi_bytes_min;
  break;
 case 155:
  optval = bbr->r_ctl.bbr_cross_over;
  break;
 case 164:
  optval = bbr->rc_use_google;
  break;
 case 140:
  optval = bbr->rc_use_ts_limit;
  break;
 case 159:
  optval = bbr->rc_init_win;
  break;
 case 142:
  optval = bbr->r_ctl.rc_startup_pg;
  break;
 case 163:
  optval = bbr->r_ctl.rc_drain_pg;
  break;
 case 147:
  optval = bbr->r_ctl.rc_probertt_int;
  break;
 case 146:
  optval = (bbr->r_ctl.rc_rttprop.cur_time_limit / USECS_IN_SECOND);
  break;
 case 148:
  optval = bbr->r_ctl.bbr_rttprobe_gain_val;
  break;
 case 143:
  optval = bbr->rc_loss_exit;
  break;
 case 138:
  error = EINVAL;
  break;
 case 157:
  optval = bbr->r_ctl.rc_min_rto_ms;
  break;
 case 158:
  optval = bbr->rc_max_rto_sec;
  break;
 case 132:

  optval = bbr->r_ctl.rc_pace_max_segs;
  break;
 case 133:

  optval = bbr->r_ctl.rc_min_to;
  break;
 case 129:

  optval = bbr->r_ctl.rc_reorder_shift;
  break;
 case 130:

  optval = bbr->r_ctl.rc_reorder_fade;
  break;
 case 137:

  optval = bbr->bbr_use_rack_cheat;
  break;
 case 161:
  optval = bbr->r_ctl.bbr_hptsi_segments_floor;
  break;
 case 136:
  optval = bbr->r_ctl.bbr_utter_max;
  break;
 case 144:

  optval = bbr->bbr_init_win_cheat;
  break;
 case 162:
  optval = bbr->rc_use_idle_restart;
  break;
 case 128:

  optval = bbr->rc_tlp_threshold;
  break;
 case 131:

  optval = bbr->r_ctl.rc_pkt_delay;
  break;
 case 145:
  optval = bbr->rc_resends_use_tso;
  break;
 case 135:
  optval = bbr->rc_allow_data_af_clo;
  break;
 case 134:
  optval = tp->t_delayed_ack;
  break;
 case 160:
  optval = bbr->bbr_hdw_pace_ena;
  break;
 case 149:
  optval = bbr->r_use_policer;
  break;
 case 139:
  optval = bbr->ts_can_raise;
  break;
 case 141:
  optval = bbr->r_ctl.rc_incr_tmrs;
  break;
 case 153:
  optval = 0;
  if (bbr->r_ctl.rc_inc_tcp_oh)
   optval |= BBR_INCL_TCP_OH;
  if (bbr->r_ctl.rc_inc_ip_oh)
   optval |= BBR_INCL_IP_OH;
  if (bbr->r_ctl.rc_inc_enet_oh)
   optval |= BBR_INCL_ENET_OH;
  break;
 default:
  return (tcp_default_ctloutput(so, sopt, inp, tp));
  break;
 }
 INP_WUNLOCK(inp);
 error = sooptcopyout(sopt, &optval, sizeof optval);
 return (error);
}
