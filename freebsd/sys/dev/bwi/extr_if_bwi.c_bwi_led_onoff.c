
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_led {int l_flags; int l_mask; } ;


 int BWI_LED_F_ACTLOW ;

__attribute__((used)) static __inline uint16_t
bwi_led_onoff(const struct bwi_led *led, uint16_t val, int on)
{
 if (led->l_flags & BWI_LED_F_ACTLOW)
  on = !on;
 if (on)
  val |= led->l_mask;
 else
  val &= ~led->l_mask;
 return val;
}
