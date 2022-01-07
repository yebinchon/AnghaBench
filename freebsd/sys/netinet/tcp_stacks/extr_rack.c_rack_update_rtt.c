
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpopt {int to_flags; int to_tsecr; } ;
struct tcpcb {int t_rttlow; scalar_t__ t_softerror; scalar_t__ t_rxtshift; int snd_ssthresh; int snd_cwnd; int snd_max; int t_flags; } ;
struct TYPE_2__ {int rc_rack_min_rtt; int rc_rack_tmit_time; int rc_prr_sndcnt; int rc_ssthresh_at; int rc_cwnd_at; int rc_rsm_start; scalar_t__ rc_tlp_cwnd_reduce; } ;
struct tcp_rack {int rc_rack_rtt; TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; int r_rtr_cnt; int* r_tim_lastsent; } ;
typedef scalar_t__ int32_t ;


 int CC_NDUPACK ;
 scalar_t__ CUM_ACKED ;
 int IN_RECOVERY (int ) ;
 int RACK_ACKED ;
 int RACK_OVERMAX ;
 int RACK_TLP ;
 scalar_t__ SEQ_LT (int,int) ;
 int TOF_TS ;
 int ctf_fixed_maxseg (struct tcpcb*) ;
 int rack_cong_signal (struct tcpcb*,int *,int ) ;
 int rack_earlier_retran (struct tcpcb*,struct rack_sendmap*,int,int) ;
 int rack_log_to_prr (struct tcp_rack*,int) ;
 int tcp_rack_xmit_timer (struct tcp_rack*,int) ;

__attribute__((used)) static int
rack_update_rtt(struct tcpcb *tp, struct tcp_rack *rack,
    struct rack_sendmap *rsm, struct tcpopt *to, uint32_t cts, int32_t ack_type)
{
 int32_t i;
 uint32_t t;

 if (rsm->r_flags & RACK_ACKED)

  return (0);


 if ((rsm->r_rtr_cnt == 1) ||
     ((ack_type == CUM_ACKED) &&
     (to->to_flags & TOF_TS) &&
     (to->to_tsecr) &&
     (rsm->r_tim_lastsent[rsm->r_rtr_cnt - 1] == to->to_tsecr))
     ) {





  t = cts - rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)];
  if ((int)t <= 0)
   t = 1;
  if (!tp->t_rttlow || tp->t_rttlow > t)
   tp->t_rttlow = t;
  if (!rack->r_ctl.rc_rack_min_rtt ||
      SEQ_LT(t, rack->r_ctl.rc_rack_min_rtt)) {
   rack->r_ctl.rc_rack_min_rtt = t;
   if (rack->r_ctl.rc_rack_min_rtt == 0) {
    rack->r_ctl.rc_rack_min_rtt = 1;
   }
  }
  tcp_rack_xmit_timer(rack, t + 1);
  if ((rsm->r_flags & RACK_TLP) &&
      (!IN_RECOVERY(tp->t_flags))) {

   if (rack->r_ctl.rc_tlp_cwnd_reduce) {
    rack->r_ctl.rc_rsm_start = tp->snd_max;
    rack->r_ctl.rc_cwnd_at = tp->snd_cwnd;
    rack->r_ctl.rc_ssthresh_at = tp->snd_ssthresh;
    rack_cong_signal(tp, ((void*)0), CC_NDUPACK);




    rack->r_ctl.rc_prr_sndcnt = ctf_fixed_maxseg(tp);
    rack_log_to_prr(rack, 7);
   }
  }
  if (SEQ_LT(rack->r_ctl.rc_rack_tmit_time, rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)])) {

   rack->r_ctl.rc_rack_tmit_time = rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)];
   rack->rc_rack_rtt = t;
  }
  return (1);
 }





 tp->t_rxtshift = 0;
 tp->t_softerror = 0;
 if ((to->to_flags & TOF_TS) &&
     (ack_type == CUM_ACKED) &&
     (to->to_tsecr) &&
     ((rsm->r_flags & RACK_OVERMAX) == 0)) {




  for (i = 0; i < rsm->r_rtr_cnt; i++) {
   if (rsm->r_tim_lastsent[i] == to->to_tsecr) {
    t = cts - rsm->r_tim_lastsent[i];
    if ((int)t <= 0)
     t = 1;
    if ((i + 1) < rsm->r_rtr_cnt) {

     rack_earlier_retran(tp, rsm, t, cts);
    }
    if (!tp->t_rttlow || tp->t_rttlow > t)
     tp->t_rttlow = t;
    if (!rack->r_ctl.rc_rack_min_rtt || SEQ_LT(t, rack->r_ctl.rc_rack_min_rtt)) {
     rack->r_ctl.rc_rack_min_rtt = t;
     if (rack->r_ctl.rc_rack_min_rtt == 0) {
      rack->r_ctl.rc_rack_min_rtt = 1;
     }
    }
    if (SEQ_LT(rack->r_ctl.rc_rack_tmit_time,
        rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)])) {

     rack->r_ctl.rc_rack_tmit_time = rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)];
     rack->rc_rack_rtt = t;
    }
    return (1);
   }
  }
  goto ts_not_found;
 } else {






ts_not_found:
  i = rsm->r_rtr_cnt - 1;
  t = cts - rsm->r_tim_lastsent[i];
  if ((int)t <= 0)
   t = 1;
  if (rack->r_ctl.rc_rack_min_rtt && SEQ_LT(t, rack->r_ctl.rc_rack_min_rtt)) {






   i = rsm->r_rtr_cnt - 2;
   t = cts - rsm->r_tim_lastsent[i];
   rack_earlier_retran(tp, rsm, t, cts);
  } else if (rack->r_ctl.rc_rack_min_rtt) {




   if (!rack->r_ctl.rc_rack_min_rtt ||
       SEQ_LT(t, rack->r_ctl.rc_rack_min_rtt)) {
    rack->r_ctl.rc_rack_min_rtt = t;
    if (rack->r_ctl.rc_rack_min_rtt == 0) {
     rack->r_ctl.rc_rack_min_rtt = 1;
    }
   }
   if (SEQ_LT(rack->r_ctl.rc_rack_tmit_time, rsm->r_tim_lastsent[i])) {

    rack->r_ctl.rc_rack_tmit_time = rsm->r_tim_lastsent[i];
    rack->rc_rack_rtt = t;
   }
   return (1);
  }
 }
 return (0);
}
