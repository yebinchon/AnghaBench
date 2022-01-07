
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int dummy; } ;
struct TYPE_2__ {int rc_lost; int rc_lt_lost; int rc_lost_bytes; int rc_reorder_ts; } ;
struct tcp_bbr {TYPE_1__ r_ctl; scalar_t__ rc_tlp_rtx_out; } ;
struct bbr_sendmap {int r_flags; scalar_t__ r_start; scalar_t__ r_end; } ;


 int BBR_CUM_ACKED ;
 int BBR_HAS_FIN ;
 int BBR_MARKED_LOST ;
 int BBR_STAT_ADD (int ,scalar_t__) ;
 int BBR_STAT_INC (int ) ;
 int BBR_TLP ;
 int BBR_WAS_SACKPASS ;
 scalar_t__ SEQ_GT (int ,int ) ;
 int bbr_badfr ;
 int bbr_badfr_bytes ;
 int bbr_reorder_seen ;

__attribute__((used)) static void
bbr_earlier_retran(struct tcpcb *tp, struct tcp_bbr *bbr, struct bbr_sendmap *rsm,
     uint32_t t, uint32_t cts, int ack_type)
{





 if (rsm->r_flags & BBR_HAS_FIN) {





  return;
 }
 if (rsm->r_flags & BBR_TLP) {



  bbr->rc_tlp_rtx_out = 0;
  return;
 }
 if (ack_type != BBR_CUM_ACKED) {






  return;
 }

 if (rsm->r_flags & BBR_WAS_SACKPASS) {




  BBR_STAT_INC(bbr_reorder_seen);
  bbr->r_ctl.rc_reorder_ts = cts;
 }

 if (rsm->r_flags & BBR_MARKED_LOST) {
  bbr->r_ctl.rc_lost -= rsm->r_end - rsm->r_start;
  bbr->r_ctl.rc_lost_bytes -= rsm->r_end - rsm->r_start;
  rsm->r_flags &= ~BBR_MARKED_LOST;
  if (SEQ_GT(bbr->r_ctl.rc_lt_lost, bbr->r_ctl.rc_lost))

   bbr->r_ctl.rc_lt_lost = bbr->r_ctl.rc_lost;
 }




 BBR_STAT_INC(bbr_badfr);
 BBR_STAT_ADD(bbr_badfr_bytes, (rsm->r_end - rsm->r_start));
}
