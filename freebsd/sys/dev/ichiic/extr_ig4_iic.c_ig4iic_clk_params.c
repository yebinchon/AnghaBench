
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ig4_hw {int sda_fall_time; int ic_clock_rate; int scl_fall_time; int sda_hold_time; } ;


 int EINVAL ;


 int IG4_SPEED_FAST_TF_MAX ;
 int IG4_SPEED_FAST_THIGH ;
 int IG4_SPEED_FAST_TLOW ;
 int IG4_SPEED_STD_TF_MAX ;
 int IG4_SPEED_STD_THIGH ;
 int IG4_SPEED_STD_TLOW ;

__attribute__((used)) static int
ig4iic_clk_params(const struct ig4_hw *hw, int speed,
    uint16_t *scl_hcnt, uint16_t *scl_lcnt, uint16_t *sda_hold)
{
 uint32_t thigh, tlow, tf_max;
 uint32_t sda_fall_time;
        uint32_t scl_fall_time;

 switch (speed) {
 case 128:
  thigh = IG4_SPEED_STD_THIGH;
  tlow = IG4_SPEED_STD_TLOW;
  tf_max = IG4_SPEED_STD_TF_MAX;
  break;

 case 129:
  thigh = IG4_SPEED_FAST_THIGH;
  tlow = IG4_SPEED_FAST_TLOW;
  tf_max = IG4_SPEED_FAST_TF_MAX;
  break;

 default:
  return (EINVAL);
 }


 sda_fall_time = hw->sda_fall_time == 0 ? tf_max : hw->sda_fall_time;
 *scl_hcnt = (uint16_t)
     ((hw->ic_clock_rate * (thigh + sda_fall_time) + 500) / 1000 - 3);

 scl_fall_time = hw->scl_fall_time == 0 ? tf_max : hw->scl_fall_time;
 *scl_lcnt = (uint16_t)
     ((hw->ic_clock_rate * (tlow + scl_fall_time) + 500) / 1000 - 1);





 if (hw->sda_hold_time != 0)
  *sda_hold = (uint16_t)
      ((hw->ic_clock_rate * hw->sda_hold_time + 500) / 1000);

 return (0);
}
