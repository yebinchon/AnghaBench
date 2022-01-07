
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;int (* write_reg_locked ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg_locked ) (struct e1000_hw*,int ,int *) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int E1000_FWSM ;
 int E1000_ICH_FWSM_FW_VALID ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int I217_CGFREG ;
 int I217_CGFREG_ENABLE_MTA_RESET ;
 int I217_LPI_GPIO_CTRL ;
 int I217_LPI_GPIO_CTRL_AUTO_EN_LPI ;
 int I217_MEMPWR ;
 int I217_MEMPWR_DISABLE_SMB_RELEASE ;
 int I217_PROXY_CTRL ;
 scalar_t__ e1000_init_phy_workarounds_pchlan (struct e1000_hw*) ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ e1000_phy_i217 ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int *) ;
 int stub3 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int *) ;
 int stub5 (struct e1000_hw*,int ,int ) ;
 int stub6 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int *) ;
 int stub8 (struct e1000_hw*,int ,int ) ;
 int stub9 (struct e1000_hw*) ;

u32 e1000_resume_workarounds_pchlan(struct e1000_hw *hw)
{
 s32 ret_val;

 DEBUGFUNC("e1000_resume_workarounds_pchlan");
 if (hw->mac.type < e1000_pch2lan)
  return E1000_SUCCESS;

 ret_val = e1000_init_phy_workarounds_pchlan(hw);
 if (ret_val) {
  DEBUGOUT1("Failed to init PHY flow ret_val=%d\n", ret_val);
  return ret_val;
 }






 if (hw->phy.type == e1000_phy_i217) {
  u16 phy_reg;

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val) {
   DEBUGOUT("Failed to setup iRST\n");
   return ret_val;
  }


  hw->phy.ops.read_reg_locked(hw, I217_LPI_GPIO_CTRL, &phy_reg);
  phy_reg &= ~I217_LPI_GPIO_CTRL_AUTO_EN_LPI;
  hw->phy.ops.write_reg_locked(hw, I217_LPI_GPIO_CTRL, phy_reg);

  if (!(E1000_READ_REG(hw, E1000_FWSM) &
      E1000_ICH_FWSM_FW_VALID)) {



   ret_val = hw->phy.ops.read_reg_locked(hw, I217_MEMPWR,
             &phy_reg);
   if (ret_val)
    goto release;
   phy_reg |= I217_MEMPWR_DISABLE_SMB_RELEASE;
   hw->phy.ops.write_reg_locked(hw, I217_MEMPWR, phy_reg);


   hw->phy.ops.write_reg_locked(hw, I217_PROXY_CTRL, 0);
  }

  ret_val = hw->phy.ops.read_reg_locked(hw, I217_CGFREG,
            &phy_reg);
  if (ret_val)
   goto release;
  phy_reg &= ~I217_CGFREG_ENABLE_MTA_RESET;
  hw->phy.ops.write_reg_locked(hw, I217_CGFREG, phy_reg);
release:
  if (ret_val)
   DEBUGOUT1("Error %d in resume workarounds\n", ret_val);
  hw->phy.ops.release(hw);
  return ret_val;
 }
 return E1000_SUCCESS;
}
