
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_vars {scalar_t__ line_speed; scalar_t__ link_up; } ;


 int ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS ;
 int ELINK_ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS ;
 scalar_t__ ELINK_SPEED_20000 ;

__attribute__((used)) static uint32_t elink_ets_get_min_w_val_nig(const struct elink_vars *vars)
{
 uint32_t min_w_val = 0;

 if (vars->link_up) {
  if (vars->line_speed == ELINK_SPEED_20000)
   min_w_val = ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS;
  else
   min_w_val = ELINK_ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS;
 } else
  min_w_val = ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS;



 return min_w_val;
}
