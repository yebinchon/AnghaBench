
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int t_delayed_ack; int t_flags; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {int rc_prop_rate; int rc_prop_reduce; int rc_tlp_cwnd_reduce; int rc_early_recovery; int rc_prr_sendalot; int rc_min_to; int rc_early_recovery_segs; int rc_reorder_shift; int rc_reorder_fade; int rc_tlp_threshold; int rc_pkt_delay; int rc_rate_sample_method; } ;
struct tcp_rack {int do_detection; int rack_tlp_threshold_use; int rc_always_pace; int rc_pace_reduce; int rc_pace_max_segs; int use_rack_cheat; int r_enforce_min_pace; int rack_per_of_gp; int rc_allow_data_af_clo; TYPE_1__ r_ctl; } ;
struct sockopt {int sopt_name; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
typedef int optval ;
typedef int int32_t ;


 int ECONNRESET ;
 int EINVAL ;
 int INP_DROPPED ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int RACK_OPTS_INC (int ) ;
 int TF_ACKNOW ;
 int TF_DELACK ;
 int TLP_USE_ID ;
 int TLP_USE_TWO_TWO ;
 int USE_RTT_AVG ;
 int USE_RTT_HIGH ;
 int USE_RTT_LOW ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int rack_output (struct tcpcb*) ;
 int rack_set_pace_segments (struct tcpcb*,struct tcp_rack*) ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;
 int tcp_default_ctloutput (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ;
 int tcp_log_socket_option (struct tcpcb*,int,int,int) ;
 int tcp_rack_cheat ;
 int tcp_rack_early_recov ;
 int tcp_rack_early_seg ;
 int tcp_rack_max_seg ;
 int tcp_rack_min_pace ;
 int tcp_rack_min_to ;
 int tcp_rack_no_sack ;
 int tcp_rack_pace_always ;
 int tcp_rack_pace_reduce ;
 int tcp_rack_pkt_delay ;
 int tcp_rack_prop ;
 int tcp_rack_prop_rate ;
 int tcp_rack_prr_sendalot ;
 int tcp_rack_reord_fade ;
 int tcp_rack_reord_thresh ;
 int tcp_rack_tlp_reduce ;
 int tcp_rack_tlp_thresh ;
 int tcp_tlp_use ;

__attribute__((used)) static int
rack_set_sockopt(struct socket *so, struct sockopt *sopt,
    struct inpcb *inp, struct tcpcb *tp, struct tcp_rack *rack)
{
 int32_t error = 0, optval;

 switch (sopt->sopt_name) {
 case 135:
 case 136:
 case 130:
 case 146:
 case 140:
 case 148:
 case 138:
 case 139:
 case 134:
 case 141:
 case 145:
 case 132:
 case 133:
 case 129:
 case 137:
 case 128:
 case 131:
 case 143:
 case 142:
 case 144:
 case 151:
 case 150:
 case 147:
 case 149:
  break;
 default:
  return (tcp_default_ctloutput(so, sopt, inp, tp));
  break;
 }
 INP_WUNLOCK(inp);
 error = sooptcopyin(sopt, &optval, sizeof(optval), sizeof(optval));
 if (error)
  return (error);
 INP_WLOCK(inp);
 if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
  INP_WUNLOCK(inp);
  return (ECONNRESET);
 }
 tp = intotcpcb(inp);
 rack = (struct tcp_rack *)tp->t_fb_ptr;
 switch (sopt->sopt_name) {
 case 147:
  RACK_OPTS_INC(tcp_rack_no_sack);
  if (optval == 0)
   rack->do_detection = 0;
  else
   rack->do_detection = 1;
  break;
 case 135:
  if ((optval <= 0) || (optval >= 100)) {
   error = EINVAL;
   break;
  }
  RACK_OPTS_INC(tcp_rack_prop_rate);
  rack->r_ctl.rc_prop_rate = optval;
  break;
 case 128:
  if ((optval < TLP_USE_ID) || (optval > TLP_USE_TWO_TWO)) {
   error = EINVAL;
   break;
  }
  RACK_OPTS_INC(tcp_tlp_use);
  rack->rack_tlp_threshold_use = optval;
  break;
 case 136:

  RACK_OPTS_INC(tcp_rack_prop);
  rack->r_ctl.rc_prop_reduce = optval;
  break;
 case 130:

  RACK_OPTS_INC(tcp_rack_tlp_reduce);
  rack->r_ctl.rc_tlp_cwnd_reduce = optval;
  break;
 case 146:

  RACK_OPTS_INC(tcp_rack_early_recov);
  rack->r_ctl.rc_early_recovery = optval;
  break;
 case 140:

  RACK_OPTS_INC(tcp_rack_pace_always);
  if (optval > 0)
   rack->rc_always_pace = 1;
  else
   rack->rc_always_pace = 0;
  break;
 case 138:

  RACK_OPTS_INC(tcp_rack_pace_reduce);
  if (optval)

   rack->rc_pace_reduce = optval;
  else
   error = EINVAL;
  break;
 case 139:

  RACK_OPTS_INC(tcp_rack_max_seg);
  rack->rc_pace_max_segs = optval;
  rack_set_pace_segments(tp, rack);
  break;
 case 134:

  RACK_OPTS_INC(tcp_rack_prr_sendalot);
  rack->r_ctl.rc_prr_sendalot = optval;
  break;
 case 141:

  RACK_OPTS_INC(tcp_rack_min_to);
  rack->r_ctl.rc_min_to = optval;
  break;
 case 145:

  RACK_OPTS_INC(tcp_rack_early_seg);
  rack->r_ctl.rc_early_recovery_segs = optval;
  break;
 case 132:

  RACK_OPTS_INC(tcp_rack_reord_thresh);
  if ((optval > 0) && (optval < 31))
   rack->r_ctl.rc_reorder_shift = optval;
  else
   error = EINVAL;
  break;
 case 133:

  RACK_OPTS_INC(tcp_rack_reord_fade);
  rack->r_ctl.rc_reorder_fade = optval;
  break;
 case 129:

  RACK_OPTS_INC(tcp_rack_tlp_thresh);
  if (optval)
   rack->r_ctl.rc_tlp_threshold = optval;
  else
   error = EINVAL;
  break;
 case 150:
  RACK_OPTS_INC(tcp_rack_cheat);
  if (optval)
   rack->use_rack_cheat = 1;
  else
   rack->use_rack_cheat = 0;
  break;
 case 137:

  RACK_OPTS_INC(tcp_rack_pkt_delay);
  rack->r_ctl.rc_pkt_delay = optval;
  break;
 case 131:

  error = EINVAL;
  break;
 case 143:
  error = EINVAL;
  break;
 case 148:
  if (optval == 0)
   tp->t_delayed_ack = 0;
  else
   tp->t_delayed_ack = 1;
  if (tp->t_flags & TF_DELACK) {
   tp->t_flags &= ~TF_DELACK;
   tp->t_flags |= TF_ACKNOW;
   rack_output(tp);
  }
  break;
 case 142:
  RACK_OPTS_INC(tcp_rack_min_pace);
  if (optval > 3)
   rack->r_enforce_min_pace = 3;
  else
   rack->r_enforce_min_pace = optval;
  break;
 case 144:
  if ((optval >= 0) &&
      (optval <= 256))
   rack->rack_per_of_gp = optval;
  else
   error = EINVAL;

  break;
 case 151:
  if ((optval != USE_RTT_HIGH) &&
      (optval != USE_RTT_LOW) &&
      (optval != USE_RTT_AVG))
   error = EINVAL;
  else
   rack->r_ctl.rc_rate_sample_method = optval;
  break;
 case 149:
  if (optval)
   rack->rc_allow_data_af_clo = 1;
  else
   rack->rc_allow_data_af_clo = 0;
  break;
 default:
  return (tcp_default_ctloutput(so, sopt, inp, tp));
  break;
 }



 INP_WUNLOCK(inp);
 return (error);
}
