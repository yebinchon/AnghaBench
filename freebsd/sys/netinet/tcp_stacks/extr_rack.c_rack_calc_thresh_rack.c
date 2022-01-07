
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int rc_reorder_ts; int rc_reorder_fade; int rc_pkt_delay; int rc_reorder_shift; } ;
struct tcp_rack {TYPE_2__* rc_tp; TYPE_1__ r_ctl; } ;
typedef int int32_t ;
struct TYPE_4__ {int t_rxtcur; } ;


 scalar_t__ SEQ_GEQ (int,int) ;
 int TICKS_2_MSEC (int ) ;
 int rack_rto_max ;

__attribute__((used)) static uint32_t
rack_calc_thresh_rack(struct tcp_rack *rack, uint32_t srtt, uint32_t cts)
{
 int32_t lro;
 uint32_t thresh;
 if (srtt == 0)
  srtt = 1;
 if (rack->r_ctl.rc_reorder_ts) {
  if (rack->r_ctl.rc_reorder_fade) {
   if (SEQ_GEQ(cts, rack->r_ctl.rc_reorder_ts)) {
    lro = cts - rack->r_ctl.rc_reorder_ts;
    if (lro == 0) {




     lro = 1;
    }
   } else {

    lro = 0;
   }
   if (lro > rack->r_ctl.rc_reorder_fade) {

    rack->r_ctl.rc_reorder_ts = 0;
    lro = 0;
   }
  } else {

   lro = 1;
  }
 } else {
  lro = 0;
 }
 thresh = srtt + rack->r_ctl.rc_pkt_delay;
 if (lro) {

  if (rack->r_ctl.rc_reorder_shift)
   thresh += (srtt >> rack->r_ctl.rc_reorder_shift);
  else
   thresh += (srtt >> 2);
 } else {
  thresh += 1;
 }

 if (thresh > TICKS_2_MSEC(rack->rc_tp->t_rxtcur)) {
  thresh = TICKS_2_MSEC(rack->rc_tp->t_rxtcur);
 }

 if (thresh > rack_rto_max) {
  thresh = rack_rto_max;
 }
 return (thresh);
}
