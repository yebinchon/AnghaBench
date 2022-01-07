
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int (* write_reg ) (struct e1000_hw*,int ,int) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int ledctl_mode1; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_3__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL_MODE_LINK_UP ;
 int E1000_PHY_LED0_IVRT ;
 int E1000_PHY_LED0_MASK ;
 int E1000_PHY_LED0_MODE_MASK ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 int HV_LED_CONFIG ;
 int stub1 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_led_off_pchlan(struct e1000_hw *hw)
{
 u16 data = (u16)hw->mac.ledctl_mode1;
 u32 i, led;

 DEBUGFUNC("e1000_led_off_pchlan");




 if (!(E1000_READ_REG(hw, E1000_STATUS) & E1000_STATUS_LU)) {
  for (i = 0; i < 3; i++) {
   led = (data >> (i * 5)) & E1000_PHY_LED0_MASK;
   if ((led & E1000_PHY_LED0_MODE_MASK) !=
       E1000_LEDCTL_MODE_LINK_UP)
    continue;
   if (led & E1000_PHY_LED0_IVRT)
    data &= ~(E1000_PHY_LED0_IVRT << (i * 5));
   else
    data |= (E1000_PHY_LED0_IVRT << (i * 5));
  }
 }

 return hw->phy.ops.write_reg(hw, HV_LED_CONFIG, data);
}
