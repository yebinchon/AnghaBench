
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int rc_rttprop; } ;
struct tcp_bbr {int rc_tp; TYPE_1__ r_ctl; } ;


 int BBR_UNIT ;
 int bbr_cwndtarget_rtt_touse ;
 int bbr_get_bw_delay_prod (int,int) ;
 scalar_t__ bbr_get_full_bw (struct tcp_bbr*) ;
 int bbr_get_rtt (struct tcp_bbr*,int ) ;
 scalar_t__ bbr_initial_cwnd (struct tcp_bbr*,int ) ;
 int get_filter_value_small (int *) ;

__attribute__((used)) static uint32_t
bbr_get_raw_target_cwnd(struct tcp_bbr *bbr, uint32_t gain, uint64_t bw)
{
 uint64_t bdp, rtt;
 uint32_t cwnd;

 if ((get_filter_value_small(&bbr->r_ctl.rc_rttprop) == 0xffffffff) ||
     (bbr_get_full_bw(bbr) == 0)) {

  return (bbr_initial_cwnd(bbr, bbr->rc_tp));
 }




 rtt = bbr_get_rtt(bbr, bbr_cwndtarget_rtt_touse);

 bdp = bbr_get_bw_delay_prod(rtt, bw);

 cwnd = (uint32_t)(((bdp * ((uint64_t)gain)) + (uint64_t)(BBR_UNIT - 1)) / ((uint64_t)BBR_UNIT));

 return (cwnd);
}
