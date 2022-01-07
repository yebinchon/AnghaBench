
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;int (* write_reg ) (struct e1000_hw*,int ,int ) ;int (* read_reg ) (struct e1000_hw*,int ,int *) ;scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int BM_PORT_GEN_CFG ;
 int BM_WUC_HOST_WU_BIT ;
 int DEBUGFUNC (char*) ;
 int E1000_FWSM ;
 int E1000_ICH_FWSM_FW_VALID ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int FALSE ;
 int I82579_LPI_UPDATE_TIMER ;
 int TRUE ;
 int e1000_gate_hw_phy_config_ich8lan (struct e1000_hw*,int ) ;
 scalar_t__ e1000_hv_phy_workarounds_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_lv_phy_workarounds_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_oem_bits_config_ich8lan (struct e1000_hw*,int ) ;


 scalar_t__ e1000_sw_lcd_config_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_write_emi_reg_locked (struct e1000_hw*,int ,int) ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,int ,int *) ;
 int stub3 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub4 (struct e1000_hw*) ;
 int stub5 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_post_phy_reset_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u16 reg;

 DEBUGFUNC("e1000_post_phy_reset_ich8lan");

 if (hw->phy.ops.check_reset_block(hw))
  return E1000_SUCCESS;


 msec_delay(10);


 switch (hw->mac.type) {
 case 128:
  ret_val = e1000_hv_phy_workarounds_ich8lan(hw);
  if (ret_val)
   return ret_val;
  break;
 case 129:
  ret_val = e1000_lv_phy_workarounds_ich8lan(hw);
  if (ret_val)
   return ret_val;
  break;
 default:
  break;
 }


 if (hw->mac.type >= 128) {
  hw->phy.ops.read_reg(hw, BM_PORT_GEN_CFG, &reg);
  reg &= ~BM_WUC_HOST_WU_BIT;
  hw->phy.ops.write_reg(hw, BM_PORT_GEN_CFG, reg);
 }


 ret_val = e1000_sw_lcd_config_ich8lan(hw);
 if (ret_val)
  return ret_val;


 ret_val = e1000_oem_bits_config_ich8lan(hw, TRUE);

 if (hw->mac.type == 129) {

  if (!(E1000_READ_REG(hw, E1000_FWSM) &
      E1000_ICH_FWSM_FW_VALID)) {
   msec_delay(10);
   e1000_gate_hw_phy_config_ich8lan(hw, FALSE);
  }


  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;
  ret_val = e1000_write_emi_reg_locked(hw,
           I82579_LPI_UPDATE_TIMER,
           0x1387);
  hw->phy.ops.release(hw);
 }

 return ret_val;
}
