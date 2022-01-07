
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ledctl_default; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;

s32 e1000_cleanup_led_generic(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_cleanup_led_generic");

 E1000_WRITE_REG(hw, E1000_LEDCTL, hw->mac.ledctl_default);
 return E1000_SUCCESS;
}
