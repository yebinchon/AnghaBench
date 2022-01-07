
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {int snd_ssthresh; int snd_cwnd; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {int rc_ssthresh_at; int rc_cwnd_at; int rc_rsm_start; int rc_tmap; int rc_mtree; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; size_t r_rtr_cnt; scalar_t__* r_tim_lastsent; int r_start; } ;
typedef size_t int32_t ;


 int CC_NDUPACK ;
 int RACK_ACKED ;
 scalar_t__ RB_EMPTY (int *) ;
 struct rack_sendmap* TAILQ_FIRST (int *) ;
 scalar_t__ rack_calc_thresh_rack (struct tcp_rack*,scalar_t__,scalar_t__) ;
 int rack_cong_signal (struct tcpcb*,int *,int ) ;
 struct rack_sendmap* rack_find_lowest_rsm (struct tcp_rack*) ;
 scalar_t__ rack_grab_rtt (struct tcpcb*,struct tcp_rack*) ;

__attribute__((used)) static struct rack_sendmap *
rack_check_recovery_mode(struct tcpcb *tp, uint32_t tsused)
{





 struct tcp_rack *rack;
 struct rack_sendmap *rsm;
 int32_t idx;
 uint32_t srtt, thresh;

 rack = (struct tcp_rack *)tp->t_fb_ptr;
 if (RB_EMPTY(&rack->r_ctl.rc_mtree)) {
  return (((void*)0));
 }
 rsm = TAILQ_FIRST(&rack->r_ctl.rc_tmap);
 if (rsm == ((void*)0))
  return (((void*)0));

 if (rsm->r_flags & RACK_ACKED) {
  rsm = rack_find_lowest_rsm(rack);
  if (rsm == ((void*)0))
   return (((void*)0));
 }
 idx = rsm->r_rtr_cnt - 1;
 srtt = rack_grab_rtt(tp, rack);
 thresh = rack_calc_thresh_rack(rack, srtt, tsused);
 if (tsused < rsm->r_tim_lastsent[idx]) {
  return (((void*)0));
 }
 if ((tsused - rsm->r_tim_lastsent[idx]) < thresh) {
  return (((void*)0));
 }

 rack->r_ctl.rc_rsm_start = rsm->r_start;
 rack->r_ctl.rc_cwnd_at = tp->snd_cwnd;
 rack->r_ctl.rc_ssthresh_at = tp->snd_ssthresh;
 rack_cong_signal(tp, ((void*)0), CC_NDUPACK);
 return (rsm);
}
