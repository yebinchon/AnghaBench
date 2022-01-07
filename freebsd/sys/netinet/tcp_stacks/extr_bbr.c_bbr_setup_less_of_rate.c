
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int rc_delrate; } ;
struct tcp_bbr {int skip_gain; int gain_is_limited; TYPE_1__ r_ctl; } ;


 int filter_reduce_by (int *,scalar_t__,int ) ;
 scalar_t__ get_filter_value (int *) ;

__attribute__((used)) static void
bbr_setup_less_of_rate(struct tcp_bbr *bbr, uint32_t cts,
         uint64_t act_rate, uint64_t rate_wanted)
{




 if (get_filter_value(&bbr->r_ctl.rc_delrate) >= act_rate) {

  uint64_t red;

  bbr->skip_gain = 1;
  bbr->gain_is_limited = 0;
  red = get_filter_value(&bbr->r_ctl.rc_delrate) - act_rate;
  if (red)
   filter_reduce_by(&bbr->r_ctl.rc_delrate, red, cts);
 } else {

  bbr->skip_gain = 0;
  bbr->gain_is_limited = 1;
 }
}
