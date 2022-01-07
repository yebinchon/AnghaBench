
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_SWDPIN0 ;
 int E1000_CTRL_SWDPIO0 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_led_off_82542(struct e1000_hw *hw)
{
 u32 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGFUNC("e1000_led_off_82542");

 ctrl &= ~E1000_CTRL_SWDPIN0;
 ctrl |= E1000_CTRL_SWDPIO0;
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);

 return E1000_SUCCESS;
}
