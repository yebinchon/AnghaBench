
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int type; int serdes_link_state; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; TYPE_1__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_EE_RST ;
 int E1000_CTRL_RST ;
 int E1000_EECD ;
 int E1000_EECD_GNT ;
 int E1000_EECD_REQ ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_TCTL ;
 int E1000_TCTL_EN ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int TRUE ;





 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_disable_pcie_master_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_auto_rd_done_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_hw_semaphore_82574 (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_nvm_flash_hw ;
 int e1000_put_hw_semaphore_82574 (struct e1000_hw*) ;
 int e1000_serdes_link_down ;
 int e1000_set_laa_state_82571 (struct e1000_hw*,int ) ;
 int msec_delay (int) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_82571(struct e1000_hw *hw)
{
 u32 ctrl, ctrl_ext, eecd, tctl;
 s32 ret_val;

 DEBUGFUNC("e1000_reset_hw_82571");




 ret_val = e1000_disable_pcie_master_generic(hw);
 if (ret_val)
  DEBUGOUT("PCI-E Master disable polling has failed.\n");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 tctl = E1000_READ_REG(hw, E1000_TCTL);
 tctl &= ~E1000_TCTL_EN;
 E1000_WRITE_REG(hw, E1000_TCTL, tctl);
 E1000_WRITE_FLUSH(hw);

 msec_delay(10);




 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  ret_val = e1000_get_hw_semaphore_82574(hw);
  break;
 default:
  break;
 }

 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGOUT("Issuing a global reset to MAC\n");
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);


 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:

  if (!ret_val)
   e1000_put_hw_semaphore_82574(hw);
  break;
 default:

  break;
 }

 if (hw->nvm.type == e1000_nvm_flash_hw) {
  usec_delay(10);
  ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);
  ctrl_ext |= E1000_CTRL_EXT_EE_RST;
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
  E1000_WRITE_FLUSH(hw);
 }

 ret_val = e1000_get_auto_rd_done_generic(hw);
 if (ret_val)

  return ret_val;






 switch (hw->mac.type) {
 case 132:
 case 131:



  eecd = E1000_READ_REG(hw, E1000_EECD);
  eecd &= ~(E1000_EECD_REQ | E1000_EECD_GNT);
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  break;
 case 130:
 case 129:
 case 128:
  msec_delay(25);
  break;
 default:
  break;
 }


 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);

 if (hw->mac.type == 132) {

  ret_val = e1000_check_alt_mac_addr_generic(hw);
  if (ret_val)
   return ret_val;

  e1000_set_laa_state_82571(hw, TRUE);
 }


 if (hw->phy.media_type == e1000_media_type_internal_serdes)
  hw->mac.serdes_link_state = e1000_serdes_link_down;

 return E1000_SUCCESS;
}
