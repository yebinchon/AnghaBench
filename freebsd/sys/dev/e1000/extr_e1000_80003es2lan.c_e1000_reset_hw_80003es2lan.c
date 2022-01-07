
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_RST ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_KMRNCTRLSTA_IBIST_DISABLE ;
 int E1000_KMRNCTRLSTA_INBAND_PARAM ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_acquire_phy_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_disable_pcie_master_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_auto_rd_done_generic (struct e1000_hw*) ;
 scalar_t__ e1000_read_kmrn_reg_80003es2lan (struct e1000_hw*,int ,int *) ;
 int e1000_release_phy_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_write_kmrn_reg_80003es2lan (struct e1000_hw*,int ,int ) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_80003es2lan(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u16 kum_reg_data;

 DEBUGFUNC("e1000_reset_hw_80003es2lan");




 ret_val = e1000_disable_pcie_master_generic(hw);
 if (ret_val)
  DEBUGOUT("PCI-E Master disable polling has failed.\n");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);

 msec_delay(10);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 ret_val = e1000_acquire_phy_80003es2lan(hw);
 if (ret_val)
  return ret_val;

 DEBUGOUT("Issuing a global reset to MAC\n");
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
 e1000_release_phy_80003es2lan(hw);


 ret_val = e1000_read_kmrn_reg_80003es2lan(hw,
    E1000_KMRNCTRLSTA_INBAND_PARAM, &kum_reg_data);
 if (!ret_val) {
  kum_reg_data |= E1000_KMRNCTRLSTA_IBIST_DISABLE;
  ret_val = e1000_write_kmrn_reg_80003es2lan(hw,
       E1000_KMRNCTRLSTA_INBAND_PARAM,
       kum_reg_data);
  if (ret_val)
   DEBUGOUT("Error disabling far-end loopback\n");
 } else
  DEBUGOUT("Error disabling far-end loopback\n");

 ret_val = e1000_get_auto_rd_done_generic(hw);
 if (ret_val)

  return ret_val;


 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);

 return e1000_check_alt_mac_addr_generic(hw);
}
