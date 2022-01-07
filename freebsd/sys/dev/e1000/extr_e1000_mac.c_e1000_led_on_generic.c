
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ledctl_mode2; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_SWDPIN0 ;
 int E1000_CTRL_SWDPIO0 ;
 int E1000_LEDCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;



s32 e1000_led_on_generic(struct e1000_hw *hw)
{
 u32 ctrl;

 DEBUGFUNC("e1000_led_on_generic");

 switch (hw->phy.media_type) {
 case 128:
  ctrl = E1000_READ_REG(hw, E1000_CTRL);
  ctrl &= ~E1000_CTRL_SWDPIN0;
  ctrl |= E1000_CTRL_SWDPIO0;
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
  break;
 case 129:
  E1000_WRITE_REG(hw, E1000_LEDCTL, hw->mac.ledctl_mode2);
  break;
 default:
  break;
 }

 return E1000_SUCCESS;
}
