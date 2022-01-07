
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int forced_speed_duplex; int autoneg; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ALL_10_SPEED ;
 scalar_t__ e1000_phy_force_speed_duplex_m88 (struct e1000_hw*) ;
 scalar_t__ e1000_polarity_reversal_workaround_82543 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_phy_force_speed_duplex_82543(struct e1000_hw *hw)
{
 s32 ret_val;

 DEBUGFUNC("e1000_phy_force_speed_duplex_82543");

 ret_val = e1000_phy_force_speed_duplex_m88(hw);
 if (ret_val)
  goto out;

 if (!hw->mac.autoneg && (hw->mac.forced_speed_duplex &
     E1000_ALL_10_SPEED))
  ret_val = e1000_polarity_reversal_workaround_82543(hw);

out:
 return ret_val;
}
