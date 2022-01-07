
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_RST ;
 int E1000_EECD ;
 int E1000_EECD_PRES ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_disable_pcie_master_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_auto_rd_done_generic (struct e1000_hw*) ;
 int e1000_reset_init_script_82575 (struct e1000_hw*) ;
 scalar_t__ e1000_set_pcie_completion_timeout (struct e1000_hw*) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_82575(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;

 DEBUGFUNC("e1000_reset_hw_82575");





 ret_val = e1000_disable_pcie_master_generic(hw);
 if (ret_val)
  DEBUGOUT("PCI-E Master disable polling has failed.\n");


 ret_val = e1000_set_pcie_completion_timeout(hw);
 if (ret_val)
  DEBUGOUT("PCI-E Set completion timeout has failed.\n");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);

 msec_delay(10);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGOUT("Issuing a global reset to MAC\n");
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);

 ret_val = e1000_get_auto_rd_done_generic(hw);
 if (ret_val) {





  DEBUGOUT("Auto Read Done did not complete\n");
 }


 if (!(E1000_READ_REG(hw, E1000_EECD) & E1000_EECD_PRES))
  e1000_reset_init_script_82575(hw);


 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);


 ret_val = e1000_check_alt_mac_addr_generic(hw);

 return ret_val;
}
