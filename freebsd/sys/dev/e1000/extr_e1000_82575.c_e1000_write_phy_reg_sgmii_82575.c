
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 scalar_t__ E1000_ERR_PARAM ;
 scalar_t__ E1000_MAX_SGMII_PHY_REG_ADDR ;
 scalar_t__ e1000_write_phy_reg_i2c (struct e1000_hw*,scalar_t__,int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_write_phy_reg_sgmii_82575(struct e1000_hw *hw, u32 offset,
        u16 data)
{
 s32 ret_val = -E1000_ERR_PARAM;

 DEBUGFUNC("e1000_write_phy_reg_sgmii_82575");

 if (offset > E1000_MAX_SGMII_PHY_REG_ADDR) {
  DEBUGOUT1("PHY Address %d is out of range\n", offset);
  goto out;
 }

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  goto out;

 ret_val = e1000_write_phy_reg_i2c(hw, offset, data);

 hw->phy.ops.release(hw);

out:
 return ret_val;
}
