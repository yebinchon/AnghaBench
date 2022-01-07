
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ledctl_mode2; int ledctl_default; } ;
struct TYPE_3__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL ;
 int E1000_LEDCTL_LED0_BLINK ;
 int E1000_LEDCTL_LED0_IVRT ;
 int E1000_LEDCTL_LED0_MODE_MASK ;
 int E1000_LEDCTL_LED0_MODE_SHIFT ;
 int E1000_LEDCTL_MODE_LED_OFF ;
 int E1000_LEDCTL_MODE_LED_ON ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_media_type_fiber ;

s32 e1000_blink_led_generic(struct e1000_hw *hw)
{
 u32 ledctl_blink = 0;
 u32 i;

 DEBUGFUNC("e1000_blink_led_generic");

 if (hw->phy.media_type == e1000_media_type_fiber) {

  ledctl_blink = E1000_LEDCTL_LED0_BLINK |
       (E1000_LEDCTL_MODE_LED_ON << E1000_LEDCTL_LED0_MODE_SHIFT);
 } else {






  ledctl_blink = hw->mac.ledctl_mode2;
  for (i = 0; i < 32; i += 8) {
   u32 mode = (hw->mac.ledctl_mode2 >> i) &
       E1000_LEDCTL_LED0_MODE_MASK;
   u32 led_default = hw->mac.ledctl_default >> i;

   if ((!(led_default & E1000_LEDCTL_LED0_IVRT) &&
        (mode == E1000_LEDCTL_MODE_LED_ON)) ||
       ((led_default & E1000_LEDCTL_LED0_IVRT) &&
        (mode == E1000_LEDCTL_MODE_LED_OFF))) {
    ledctl_blink &=
        ~(E1000_LEDCTL_LED0_MODE_MASK << i);
    ledctl_blink |= (E1000_LEDCTL_LED0_BLINK |
       E1000_LEDCTL_MODE_LED_ON) << i;
   }
  }
 }

 E1000_WRITE_REG(hw, E1000_LEDCTL, ledctl_blink);

 return E1000_SUCCESS;
}
