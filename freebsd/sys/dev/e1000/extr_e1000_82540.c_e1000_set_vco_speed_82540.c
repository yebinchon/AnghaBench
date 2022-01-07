
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int M88E1000_PHY_GEN_CONTROL ;
 int M88E1000_PHY_PAGE_SELECT ;
 int M88E1000_PHY_VCO_REG_BIT11 ;
 int M88E1000_PHY_VCO_REG_BIT8 ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_set_vco_speed_82540(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 default_page = 0;
 u16 phy_data;

 DEBUGFUNC("e1000_set_vco_speed_82540");



 ret_val = hw->phy.ops.read_reg(hw, M88E1000_PHY_PAGE_SELECT,
           &default_page);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0005);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.read_reg(hw, M88E1000_PHY_GEN_CONTROL, &phy_data);
 if (ret_val)
  goto out;

 phy_data &= ~M88E1000_PHY_VCO_REG_BIT8;
 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, phy_data);
 if (ret_val)
  goto out;



 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0004);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.read_reg(hw, M88E1000_PHY_GEN_CONTROL, &phy_data);
 if (ret_val)
  goto out;

 phy_data |= M88E1000_PHY_VCO_REG_BIT11;
 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, phy_data);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT,
     default_page);

out:
 return ret_val;
}
