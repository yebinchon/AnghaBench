
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;int (* write_reg_locked ) (struct e1000_hw*,int ,scalar_t__) ;int (* read_reg_locked ) (struct e1000_hw*,int ,scalar_t__*) ;} ;
struct TYPE_8__ {scalar_t__ type; int autoneg_advertised; TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_dev_spec_ich8lan {scalar_t__ eee_lp_ability; int eee_disable; } ;
struct TYPE_5__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {scalar_t__ device_id; TYPE_4__ phy; TYPE_2__ mac; TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int ADVERTISE_100_FULL ;
 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_DEV_ID_PCH_I218_LM3 ;
 scalar_t__ E1000_DEV_ID_PCH_I218_V3 ;
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_LM ;
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_V ;
 int E1000_FEXTNVM6 ;
 int E1000_FEXTNVM6_REQ_PLL_CLK ;
 int E1000_FWSM ;
 int E1000_ICH_FWSM_FW_VALID ;
 int E1000_PHY_CTRL ;
 int E1000_PHY_CTRL_D0A_LPLU ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_LPLU ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int FALSE ;
 int I217_CGFREG ;
 scalar_t__ I217_CGFREG_ENABLE_MTA_RESET ;
 int I217_EEE_ADVERTISEMENT ;
 int I217_LPI_GPIO_CTRL ;
 scalar_t__ I217_LPI_GPIO_CTRL_AUTO_EN_LPI ;
 int I217_MEMPWR ;
 scalar_t__ I217_MEMPWR_DISABLE_SMB_RELEASE ;
 int I217_PROXY_CTRL ;
 scalar_t__ I217_PROXY_CTRL_AUTO_DISABLE ;
 int I217_SxCTRL ;
 scalar_t__ I217_SxCTRL_ENABLE_LPI_RESET ;
 scalar_t__ I82579_EEE_100_SUPPORTED ;
 int e1000_gig_downshift_workaround_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_ich8lan ;
 int e1000_oem_bits_config_ich8lan (struct e1000_hw*,int ) ;
 scalar_t__ e1000_pch_spt ;
 scalar_t__ e1000_pchlan ;
 int e1000_phy_hw_reset_generic (struct e1000_hw*) ;
 scalar_t__ e1000_phy_i217 ;
 scalar_t__ e1000_read_emi_reg_locked (struct e1000_hw*,int ,scalar_t__*) ;
 int e1000_write_smbus_addr (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub10 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub11 (struct e1000_hw*,int ,scalar_t__) ;
 int stub12 (struct e1000_hw*) ;
 scalar_t__ stub13 (struct e1000_hw*) ;
 int stub14 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub3 (struct e1000_hw*,int ,scalar_t__) ;
 int stub4 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub5 (struct e1000_hw*,int ,scalar_t__) ;
 int stub6 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub7 (struct e1000_hw*,int ,scalar_t__) ;
 int stub8 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub9 (struct e1000_hw*,int ,scalar_t__) ;

void e1000_suspend_workarounds_ich8lan(struct e1000_hw *hw)
{
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 phy_ctrl;
 s32 ret_val;

 DEBUGFUNC("e1000_suspend_workarounds_ich8lan");

 phy_ctrl = E1000_READ_REG(hw, E1000_PHY_CTRL);
 phy_ctrl |= E1000_PHY_CTRL_GBE_DISABLE;

 if (hw->phy.type == e1000_phy_i217) {
  u16 phy_reg, device_id = hw->device_id;

  if ((device_id == E1000_DEV_ID_PCH_LPTLP_I218_LM) ||
      (device_id == E1000_DEV_ID_PCH_LPTLP_I218_V) ||
      (device_id == E1000_DEV_ID_PCH_I218_LM3) ||
      (device_id == E1000_DEV_ID_PCH_I218_V3) ||
      (hw->mac.type >= e1000_pch_spt)) {
   u32 fextnvm6 = E1000_READ_REG(hw, E1000_FEXTNVM6);

   E1000_WRITE_REG(hw, E1000_FEXTNVM6,
     fextnvm6 & ~E1000_FEXTNVM6_REQ_PLL_CLK);
  }

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   goto out;

  if (!dev_spec->eee_disable) {
   u16 eee_advert;

   ret_val =
       e1000_read_emi_reg_locked(hw,
            I217_EEE_ADVERTISEMENT,
            &eee_advert);
   if (ret_val)
    goto release;






   if ((eee_advert & I82579_EEE_100_SUPPORTED) &&
       (dev_spec->eee_lp_ability &
        I82579_EEE_100_SUPPORTED) &&
       (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)) {
    phy_ctrl &= ~(E1000_PHY_CTRL_D0A_LPLU |
           E1000_PHY_CTRL_NOND0A_LPLU);


    hw->phy.ops.read_reg_locked(hw,
           I217_LPI_GPIO_CTRL,
           &phy_reg);
    phy_reg |= I217_LPI_GPIO_CTRL_AUTO_EN_LPI;
    hw->phy.ops.write_reg_locked(hw,
            I217_LPI_GPIO_CTRL,
            phy_reg);
   }
  }
  if (!(E1000_READ_REG(hw, E1000_FWSM) &
        E1000_ICH_FWSM_FW_VALID)) {

   hw->phy.ops.read_reg_locked(hw, I217_PROXY_CTRL,
          &phy_reg);
   phy_reg |= I217_PROXY_CTRL_AUTO_DISABLE;
   hw->phy.ops.write_reg_locked(hw, I217_PROXY_CTRL,
           phy_reg);




   hw->phy.ops.read_reg_locked(hw, I217_SxCTRL, &phy_reg);
   phy_reg |= I217_SxCTRL_ENABLE_LPI_RESET;
   hw->phy.ops.write_reg_locked(hw, I217_SxCTRL, phy_reg);


   hw->phy.ops.read_reg_locked(hw, I217_MEMPWR, &phy_reg);
   phy_reg &= ~I217_MEMPWR_DISABLE_SMB_RELEASE;
   hw->phy.ops.write_reg_locked(hw, I217_MEMPWR, phy_reg);
  }




  hw->phy.ops.read_reg_locked(hw, I217_CGFREG, &phy_reg);
  phy_reg |= I217_CGFREG_ENABLE_MTA_RESET;
  hw->phy.ops.write_reg_locked(hw, I217_CGFREG, phy_reg);

release:
  hw->phy.ops.release(hw);
 }
out:
 E1000_WRITE_REG(hw, E1000_PHY_CTRL, phy_ctrl);

 if (hw->mac.type == e1000_ich8lan)
  e1000_gig_downshift_workaround_ich8lan(hw);

 if (hw->mac.type >= e1000_pchlan) {
  e1000_oem_bits_config_ich8lan(hw, FALSE);


  if (hw->mac.type == e1000_pchlan)
   e1000_phy_hw_reset_generic(hw);

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return;
  e1000_write_smbus_addr(hw);
  hw->phy.ops.release(hw);
 }

 return;
}
