
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* commit ) (struct e1000_hw*) ;scalar_t__ (* write_reg ) (struct e1000_hw*,int,int) ;} ;
struct e1000_phy_info {scalar_t__ id; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ M88E1512_E_PHY_ID ;
 scalar_t__ e1000_initialize_M88E1512_phy (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int,int) ;
 scalar_t__ stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_phy_hw_reset_sgmii_82575(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 struct e1000_phy_info *phy = &hw->phy;

 DEBUGFUNC("e1000_phy_hw_reset_sgmii_82575");






 DEBUGOUT("Soft resetting SGMII attached PHY...\n");

 if (!(hw->phy.ops.write_reg))
  goto out;





 ret_val = hw->phy.ops.write_reg(hw, 0x1B, 0x8084);
 if (ret_val)
  goto out;

 ret_val = hw->phy.ops.commit(hw);
 if (ret_val)
  goto out;

 if (phy->id == M88E1512_E_PHY_ID)
  ret_val = e1000_initialize_M88E1512_phy(hw);
out:
 return ret_val;
}
