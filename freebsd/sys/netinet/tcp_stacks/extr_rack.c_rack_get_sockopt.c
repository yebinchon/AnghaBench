
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_delayed_ack; } ;
struct TYPE_2__ {scalar_t__ rc_prop_rate; scalar_t__ rc_prop_reduce; scalar_t__ rc_tlp_cwnd_reduce; scalar_t__ rc_early_recovery; scalar_t__ rc_prr_sendalot; scalar_t__ rc_min_to; scalar_t__ rc_early_recovery_segs; scalar_t__ rc_reorder_shift; scalar_t__ rc_reorder_fade; scalar_t__ rc_tlp_threshold; scalar_t__ rc_pkt_delay; scalar_t__ rc_rate_sample_method; } ;
struct tcp_rack {scalar_t__ do_detection; scalar_t__ rc_pace_reduce; scalar_t__ rc_pace_max_segs; scalar_t__ rc_always_pace; scalar_t__ use_rack_cheat; scalar_t__ rack_tlp_threshold_use; scalar_t__ r_enforce_min_pace; scalar_t__ rack_per_of_gp; scalar_t__ rc_allow_data_af_clo; TYPE_1__ r_ctl; } ;
struct sockopt {int sopt_name; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ EINVAL ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ sooptcopyout (struct sockopt*,scalar_t__*,int) ;
 int tcp_default_ctloutput (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ;

__attribute__((used)) static int
rack_get_sockopt(struct socket *so, struct sockopt *sopt,
    struct inpcb *inp, struct tcpcb *tp, struct tcp_rack *rack)
{
 int32_t error, optval;







 error = 0;
 switch (sopt->sopt_name) {
 case 147:
  optval = rack->do_detection;
  break;

 case 135:
  optval = rack->r_ctl.rc_prop_rate;
  break;
 case 136:

  optval = rack->r_ctl.rc_prop_reduce;
  break;
 case 130:

  optval = rack->r_ctl.rc_tlp_cwnd_reduce;
  break;
 case 146:

  optval = rack->r_ctl.rc_early_recovery;
  break;
 case 138:

  optval = rack->rc_pace_reduce;
  break;
 case 139:

  optval = rack->rc_pace_max_segs;
  break;
 case 140:

  optval = rack->rc_always_pace;
  break;
 case 134:

  optval = rack->r_ctl.rc_prr_sendalot;
  break;
 case 141:

  optval = rack->r_ctl.rc_min_to;
  break;
 case 145:

  optval = rack->r_ctl.rc_early_recovery_segs;
  break;
 case 132:

  optval = rack->r_ctl.rc_reorder_shift;
  break;
 case 133:

  optval = rack->r_ctl.rc_reorder_fade;
  break;
 case 150:

  optval = rack->use_rack_cheat;
  break;
 case 129:

  optval = rack->r_ctl.rc_tlp_threshold;
  break;
 case 137:

  optval = rack->r_ctl.rc_pkt_delay;
  break;
 case 128:
  optval = rack->rack_tlp_threshold_use;
  break;
 case 131:

  error = EINVAL;
  break;
 case 143:
  error = EINVAL;
  break;
 case 142:
  optval = rack->r_enforce_min_pace;
  break;
 case 144:
  optval = rack->rack_per_of_gp;
  break;
 case 151:
  optval = rack->r_ctl.rc_rate_sample_method;
  break;
 case 148:
  optval = tp->t_delayed_ack;
  break;
 case 149:
  optval = rack->rc_allow_data_af_clo;
  break;
 default:
  return (tcp_default_ctloutput(so, sopt, inp, tp));
  break;
 }
 INP_WUNLOCK(inp);
 if (error == 0) {
  error = sooptcopyout(sopt, &optval, sizeof optval);
 }
 return (error);
}
