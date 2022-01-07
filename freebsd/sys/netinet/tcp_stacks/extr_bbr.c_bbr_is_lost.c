
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcp_bbr {int dummy; } ;
struct bbr_sendmap {scalar_t__* r_tim_lastsent; int r_rtr_cnt; } ;


 int BBR_RTT_RACK ;
 scalar_t__ bbr_calc_thresh_rack (struct tcp_bbr*,int ,scalar_t__,struct bbr_sendmap*) ;
 int bbr_get_rtt (struct tcp_bbr*,int ) ;

__attribute__((used)) static int
bbr_is_lost(struct tcp_bbr *bbr, struct bbr_sendmap *rsm, uint32_t cts)
{
 uint32_t thresh;


 thresh = bbr_calc_thresh_rack(bbr, bbr_get_rtt(bbr, BBR_RTT_RACK),
          cts, rsm);
 if ((cts - rsm->r_tim_lastsent[(rsm->r_rtr_cnt - 1)]) >= thresh) {

  return (1);
 }
 return (0);
}
