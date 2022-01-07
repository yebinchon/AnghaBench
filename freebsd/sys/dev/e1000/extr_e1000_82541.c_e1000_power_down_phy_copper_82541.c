
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int E1000_MANC ;
 int E1000_MANC_SMBUS_EN ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int e1000_power_down_phy_copper (struct e1000_hw*) ;

__attribute__((used)) static void e1000_power_down_phy_copper_82541(struct e1000_hw *hw)
{

 if (!(E1000_READ_REG(hw, E1000_MANC) & E1000_MANC_SMBUS_EN))
  e1000_power_down_phy_copper(hw);

 return;
}
