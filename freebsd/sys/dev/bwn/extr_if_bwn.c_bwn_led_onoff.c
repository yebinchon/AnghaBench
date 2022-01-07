
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_led {int led_flags; int led_mask; } ;


 int BWN_LED_F_ACTLOW ;

__attribute__((used)) static __inline uint16_t
bwn_led_onoff(const struct bwn_led *led, uint16_t val, int on)
{

 if (led->led_flags & BWN_LED_F_ACTLOW)
  on = !on;
 if (on)
  val |= led->led_mask;
 else
  val &= ~led->led_mask;
 return val;
}
