
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_2__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EECD ;
 int E1000_EECD_PRES ;
 int E1000_ERR_CONFIG ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_PHYRA ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_get_auto_rd_done_generic (struct e1000_hw*) ;
 int e1000_get_cfg_done_generic (struct e1000_hw*) ;
 scalar_t__ e1000_ich10lan ;
 scalar_t__ e1000_ich9lan ;
 int e1000_lan_init_done_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_phy_igp_3 ;
 int e1000_phy_init_script_igp3 (struct e1000_hw*) ;
 scalar_t__ e1000_valid_nvm_bank_detect_ich8lan (struct e1000_hw*,int*) ;

__attribute__((used)) static s32 e1000_get_cfg_done_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u32 bank = 0;
 u32 status;

 DEBUGFUNC("e1000_get_cfg_done_ich8lan");

 e1000_get_cfg_done_generic(hw);


 if (hw->mac.type >= e1000_ich10lan) {
  e1000_lan_init_done_ich8lan(hw);
 } else {
  ret_val = e1000_get_auto_rd_done_generic(hw);
  if (ret_val) {




   DEBUGOUT("Auto Read Done did not complete\n");
   ret_val = E1000_SUCCESS;
  }
 }


 status = E1000_READ_REG(hw, E1000_STATUS);
 if (status & E1000_STATUS_PHYRA)
  E1000_WRITE_REG(hw, E1000_STATUS, status & ~E1000_STATUS_PHYRA);
 else
  DEBUGOUT("PHY Reset Asserted not set - needs delay\n");


 if (hw->mac.type <= e1000_ich9lan) {
  if (!(E1000_READ_REG(hw, E1000_EECD) & E1000_EECD_PRES) &&
      (hw->phy.type == e1000_phy_igp_3)) {
   e1000_phy_init_script_igp3(hw);
  }
 } else {
  if (e1000_valid_nvm_bank_detect_ich8lan(hw, &bank)) {

   DEBUGOUT("EEPROM not present\n");
   ret_val = -E1000_ERR_CONFIG;
  }
 }

 return ret_val;
}
