
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {int t_flags; } ;
struct TYPE_2__ {int rc_tmap; int rc_mtree; } ;
struct tcp_rack {scalar_t__ sack_attack_disable; TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; size_t r_rtr_cnt; scalar_t__* r_tim_lastsent; scalar_t__ r_dupack; } ;
typedef size_t int32_t ;


 scalar_t__ DUP_ACK_THRESHOLD ;
 int RACK_ACKED ;
 int RACK_SACK_PASSED ;
 scalar_t__ RB_EMPTY (int *) ;
 struct rack_sendmap* TAILQ_FIRST (int *) ;
 int TF_SENTFIN ;
 scalar_t__ TSTMP_LT (scalar_t__,scalar_t__) ;
 scalar_t__ rack_calc_thresh_rack (struct tcp_rack*,scalar_t__,scalar_t__) ;
 struct rack_sendmap* rack_find_lowest_rsm (struct tcp_rack*) ;
 scalar_t__ rack_grab_rtt (struct tcpcb*,struct tcp_rack*) ;
 int rack_log_retran_reason (struct tcp_rack*,struct rack_sendmap*,scalar_t__,scalar_t__,int) ;

struct rack_sendmap *
tcp_rack_output(struct tcpcb *tp, struct tcp_rack *rack, uint32_t tsused)
{
 struct rack_sendmap *rsm = ((void*)0);
 int32_t idx;
 uint32_t srtt = 0, thresh = 0, ts_low = 0;


 if (RB_EMPTY(&rack->r_ctl.rc_mtree)) {
  return (((void*)0));
 }
 if (tp->t_flags & TF_SENTFIN) {

  return (((void*)0));
 }

 rsm = TAILQ_FIRST(&rack->r_ctl.rc_tmap);
 if (rsm && ((rsm->r_flags & RACK_ACKED) == 0)) {
  goto check_it;
 }
 rsm = rack_find_lowest_rsm(rack);
 if (rsm == ((void*)0)) {
  return (((void*)0));
 }
check_it:
 if (rsm->r_flags & RACK_ACKED) {
  return (((void*)0));
 }
 if ((rsm->r_flags & RACK_SACK_PASSED) == 0) {

  return (((void*)0));
 }
 srtt = rack_grab_rtt(tp, rack);
 idx = rsm->r_rtr_cnt - 1;
 ts_low = rsm->r_tim_lastsent[idx];
 thresh = rack_calc_thresh_rack(rack, srtt, tsused);
 if ((tsused == ts_low) ||
     (TSTMP_LT(tsused, ts_low))) {

  return (((void*)0));
 }
 if ((tsused - ts_low) < thresh) {

  return (((void*)0));
 }
 if ((rsm->r_dupack >= DUP_ACK_THRESHOLD) ||
     ((rsm->r_flags & RACK_SACK_PASSED) &&
      (rack->sack_attack_disable == 0))) {
  rack_log_retran_reason(rack, rsm, (tsused - ts_low), thresh, 1);
  return (rsm);
 }
 return (((void*)0));
}
