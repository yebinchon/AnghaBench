
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_SWDPIN0 ;
 int E1000_CTRL_SWDPIO0 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_media_type_copper ;

__attribute__((used)) static s32 e1000_led_on_82543(struct e1000_hw *hw)
{
 u32 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGFUNC("e1000_led_on_82543");

 if (hw->mac.type == e1000_82544 &&
     hw->phy.media_type == e1000_media_type_copper) {

  ctrl &= ~E1000_CTRL_SWDPIN0;
  ctrl |= E1000_CTRL_SWDPIO0;
 } else {

  ctrl |= E1000_CTRL_SWDPIN0;
  ctrl |= E1000_CTRL_SWDPIO0;
 }
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);

 return E1000_SUCCESS;
}
