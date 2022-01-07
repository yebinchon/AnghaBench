
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int bbr_google_discount; } ;
struct tcp_bbr {int rc_last_options; scalar_t__ rc_use_google; TYPE_2__ r_ctl; TYPE_1__* rc_tp; } ;
typedef int int32_t ;
struct TYPE_3__ {int t_maxseg; } ;


 int BBR_SRTT ;
 int BBR_STAT_INC (int ) ;
 scalar_t__ BBR_UNIT ;
 scalar_t__ USECS_IN_SECOND ;
 scalar_t__ bbr_gain_adjust (struct tcp_bbr*,scalar_t__) ;
 int bbr_get_bw (struct tcp_bbr*) ;
 int bbr_get_header_oh (struct tcp_bbr*) ;
 int bbr_get_rtt (struct tcp_bbr*,int ) ;
 int bbr_hpts_min_time ;
 int bbr_hptsi_max_div ;
 int bbr_hptsi_max_mul ;
 int bbr_log_pacing_delay_calc (struct tcp_bbr*,scalar_t__,int,int,int,int,int,int) ;

__attribute__((used)) static uint32_t
bbr_get_pacing_delay(struct tcp_bbr *bbr, uint16_t gain, int32_t len, uint32_t cts, int nolog)
{
 uint64_t bw, lentim, res;
 uint32_t usecs, srtt, over = 0;
 uint32_t seg_oh, num_segs, maxseg;

 if (len == 0)
  return (0);

 maxseg = bbr->rc_tp->t_maxseg - bbr->rc_last_options;
 num_segs = (len + maxseg - 1) / maxseg;
 if (bbr->rc_use_google == 0) {
  seg_oh = bbr_get_header_oh(bbr);
  len += (num_segs * seg_oh);
 }
 gain = bbr_gain_adjust(bbr, gain);
 bw = bbr_get_bw(bbr);
 if (bbr->rc_use_google) {
  uint64_t cbw;





  cbw = bw * (uint64_t)(1000 - bbr->r_ctl.bbr_google_discount);
  cbw /= (uint64_t)1000;

  if (cbw > 0)
   bw = cbw;
 }
 lentim = ((uint64_t)len *
    (uint64_t)USECS_IN_SECOND *
    (uint64_t)BBR_UNIT);
 res = lentim / ((uint64_t)gain * bw);
 if (res == 0)
  res = 1;
 usecs = (uint32_t)res;
 srtt = bbr_get_rtt(bbr, BBR_SRTT);
 if (bbr_hptsi_max_mul && bbr_hptsi_max_div &&
     (bbr->rc_use_google == 0) &&
     (usecs > ((srtt * bbr_hptsi_max_mul) / bbr_hptsi_max_div))) {




  over = usecs = (srtt * bbr_hptsi_max_mul) / bbr_hptsi_max_div;
  BBR_STAT_INC(bbr_hpts_min_time);
 }
 if (!nolog)
  bbr_log_pacing_delay_calc(bbr, gain, len, cts, usecs, bw, over, 1);
 return (usecs);
}
