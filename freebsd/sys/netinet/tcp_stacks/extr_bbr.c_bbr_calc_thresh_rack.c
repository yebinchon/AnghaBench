
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int rc_reorder_ts; int rc_reorder_fade; int rc_pkt_delay; int rc_reorder_shift; } ;
struct tcp_bbr {scalar_t__ rc_max_rto_sec; TYPE_2__* rc_tp; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ t_srtt; int t_rxtcur; } ;


 int BBR_INITIAL_RTO ;
 int BBR_TO_FRM_RACK ;
 scalar_t__ SEQ_GEQ (int,int) ;
 int TICKS_2_USEC (int ) ;
 int USECS_IN_SECOND ;
 int bbr_log_thresh_choice (struct tcp_bbr*,int,int,int,int,struct bbr_sendmap*,int ) ;

__attribute__((used)) static uint32_t
bbr_calc_thresh_rack(struct tcp_bbr *bbr, uint32_t srtt, uint32_t cts, struct bbr_sendmap *rsm)
{
 int32_t lro;
 uint32_t thresh, t_rxtcur;

 if (srtt == 0)
  srtt = 1;
 if (bbr->r_ctl.rc_reorder_ts) {
  if (bbr->r_ctl.rc_reorder_fade) {
   if (SEQ_GEQ(cts, bbr->r_ctl.rc_reorder_ts)) {
    lro = cts - bbr->r_ctl.rc_reorder_ts;
    if (lro == 0) {




     lro = 1;
    }
   } else {

    lro = 0;
   }
   if (lro > bbr->r_ctl.rc_reorder_fade) {

    bbr->r_ctl.rc_reorder_ts = 0;
    lro = 0;
   }
  } else {

   lro = 1;
  }
 } else {
  lro = 0;
 }
 thresh = srtt + bbr->r_ctl.rc_pkt_delay;
 if (lro) {

  if (bbr->r_ctl.rc_reorder_shift)
   thresh += (srtt >> bbr->r_ctl.rc_reorder_shift);
  else
   thresh += (srtt >> 2);
 } else {
  thresh += 1000;
 }

 if ((bbr->rc_tp)->t_srtt == 0)
  t_rxtcur = BBR_INITIAL_RTO;
 else
  t_rxtcur = TICKS_2_USEC(bbr->rc_tp->t_rxtcur);
 if (thresh > t_rxtcur) {
  thresh = t_rxtcur;
 }

 if (thresh > (((uint32_t)bbr->rc_max_rto_sec) * USECS_IN_SECOND)) {
  thresh = (((uint32_t)bbr->rc_max_rto_sec) * USECS_IN_SECOND);
 }
 bbr_log_thresh_choice(bbr, cts, thresh, lro, srtt, rsm, BBR_TO_FRM_RACK);
 return (thresh);
}
