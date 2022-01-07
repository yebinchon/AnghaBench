
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rc_level_state_extra; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;


 int arc4random_uniform (int ) ;
 int bbr_rand_ot ;

__attribute__((used)) static void
bbr_randomize_extra_state_time(struct tcp_bbr *bbr)
{
 uint32_t ran, deduct;

 ran = arc4random_uniform(bbr_rand_ot);
 if (ran) {
  deduct = bbr->r_ctl.rc_level_state_extra / ran;
  bbr->r_ctl.rc_level_state_extra -= deduct;
 }
}
