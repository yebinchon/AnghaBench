
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ledctl_default; } ;
struct TYPE_4__ {int (* write_reg ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int IFE_PHY_SPECIAL_CONTROL_LED ;
 scalar_t__ e1000_phy_ife ;
 int stub1 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_cleanup_led_ich8lan(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_cleanup_led_ich8lan");

 if (hw->phy.type == e1000_phy_ife)
  return hw->phy.ops.write_reg(hw, IFE_PHY_SPECIAL_CONTROL_LED,
          0);

 E1000_WRITE_REG(hw, E1000_LEDCTL, hw->mac.ledctl_default);
 return E1000_SUCCESS;
}
