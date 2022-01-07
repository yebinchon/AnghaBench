
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ledctl_mode2; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL ;
 int E1000_LEDCTL_LED0_IVRT ;
 int E1000_LEDCTL_MODE_LED_ON ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_led_on_82574(struct e1000_hw *hw)
{
 u32 ctrl;
 u32 i;

 DEBUGFUNC("e1000_led_on_82574");

 ctrl = hw->mac.ledctl_mode2;
 if (!(E1000_STATUS_LU & E1000_READ_REG(hw, E1000_STATUS))) {



  for (i = 0; i < 4; i++)
   if (((hw->mac.ledctl_mode2 >> (i * 8)) & 0xFF) ==
       E1000_LEDCTL_MODE_LED_ON)
    ctrl |= (E1000_LEDCTL_LED0_IVRT << (i * 8));
 }
 E1000_WRITE_REG(hw, E1000_LEDCTL, ctrl);

 return E1000_SUCCESS;
}
