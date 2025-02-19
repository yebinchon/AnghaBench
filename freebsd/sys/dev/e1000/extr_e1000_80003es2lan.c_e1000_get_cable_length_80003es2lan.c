
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {int min_cable_length; int max_cable_length; int cable_length; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_ERR_PHY ;
 scalar_t__ E1000_SUCCESS ;
 int GG82563_CABLE_LENGTH_TABLE_SIZE ;
 int GG82563_DSPD_CABLE_LENGTH ;
 int GG82563_PHY_DSP_DISTANCE ;
 void** e1000_gg82563_cable_length_table ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;

__attribute__((used)) static s32 e1000_get_cable_length_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, index;

 DEBUGFUNC("e1000_get_cable_length_80003es2lan");

 if (!(hw->phy.ops.read_reg))
  return E1000_SUCCESS;

 ret_val = hw->phy.ops.read_reg(hw, GG82563_PHY_DSP_DISTANCE, &phy_data);
 if (ret_val)
  return ret_val;

 index = phy_data & GG82563_DSPD_CABLE_LENGTH;

 if (index >= GG82563_CABLE_LENGTH_TABLE_SIZE - 5)
  return -E1000_ERR_PHY;

 phy->min_cable_length = e1000_gg82563_cable_length_table[index];
 phy->max_cable_length = e1000_gg82563_cable_length_table[index + 5];

 phy->cable_length = (phy->min_cable_length + phy->max_cable_length) / 2;

 return E1000_SUCCESS;
}
