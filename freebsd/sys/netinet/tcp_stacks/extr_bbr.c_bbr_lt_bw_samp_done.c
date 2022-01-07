
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int rc_lt_bw; int rc_pkt_epoch; int rc_lt_epoch_use; int rc_bbr_hptsi_gain; } ;
struct tcp_bbr {int rc_lt_use_bw; TYPE_1__ r_ctl; } ;


 int BBR_UNIT ;
 int bbr_log_type_ltbw (struct tcp_bbr*,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int bbr_lt_bw_diff ;
 int bbr_lt_bw_ratio ;
 int bbr_reset_lt_bw_interval (struct tcp_bbr*,scalar_t__) ;

__attribute__((used)) static inline void
bbr_lt_bw_samp_done(struct tcp_bbr *bbr, uint64_t bw, uint32_t cts, uint32_t timin)
{
 uint64_t diff;


 if (bbr->r_ctl.rc_lt_bw) {

  if (bbr->r_ctl.rc_lt_bw > bw)
   diff = bbr->r_ctl.rc_lt_bw - bw;
  else
   diff = bw - bbr->r_ctl.rc_lt_bw;
  if ((diff <= bbr_lt_bw_diff) ||
      (diff <= (bbr->r_ctl.rc_lt_bw / bbr_lt_bw_ratio))) {

   uint32_t saved_bw;

   saved_bw = (uint32_t)bbr->r_ctl.rc_lt_bw;
   bbr->r_ctl.rc_lt_bw = (bw + bbr->r_ctl.rc_lt_bw) / 2;
   bbr->rc_lt_use_bw = 1;
   bbr->r_ctl.rc_bbr_hptsi_gain = BBR_UNIT;




   bbr->r_ctl.rc_lt_epoch_use = bbr->r_ctl.rc_pkt_epoch;




   bbr_log_type_ltbw(bbr, cts, 4, (uint32_t)bw, saved_bw, (uint32_t)diff, timin);
   return;
  }
 }
 bbr->r_ctl.rc_lt_bw = bw;
 bbr_reset_lt_bw_interval(bbr, cts);
 bbr_log_type_ltbw(bbr, cts, 5, 0, (uint32_t)bw, 0, timin);
}
