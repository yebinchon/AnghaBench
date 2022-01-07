
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {TYPE_2__ ops; } ;
struct TYPE_3__ {scalar_t__ (* check_mng_mode ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; struct e1000_phy_info phy; } ;


 int e1000_power_down_phy_copper (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;

__attribute__((used)) static void e1000_power_down_phy_copper_82571(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 struct e1000_mac_info *mac = &hw->mac;

 if (!phy->ops.check_reset_block)
  return;


 if (!(mac->ops.check_mng_mode(hw) || phy->ops.check_reset_block(hw)))
  e1000_power_down_phy_copper(hw);

 return;
}
