
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* reload ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_bus_info {int pci_cmd_word; } ;
struct e1000_hw {scalar_t__ revision_id; TYPE_2__ nvm; struct e1000_bus_info bus; } ;
typedef int s32 ;


 int CMD_MEM_WRT_INVALIDATE ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_RST ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_REVISION_2 ;
 int E1000_SUCCESS ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_pci_clear_mwi (struct e1000_hw*) ;
 int e1000_pci_set_mwi (struct e1000_hw*) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_reset_hw_82542(struct e1000_hw *hw)
{
 struct e1000_bus_info *bus = &hw->bus;
 s32 ret_val = E1000_SUCCESS;
 u32 ctrl;

 DEBUGFUNC("e1000_reset_hw_82542");

 if (hw->revision_id == E1000_REVISION_2) {
  DEBUGOUT("Disabling MWI on 82542 rev 2\n");
  e1000_pci_clear_mwi(hw);
 }

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);





 msec_delay(10);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGOUT("Issuing a global reset to 82542/82543 MAC\n");
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);

 hw->nvm.ops.reload(hw);
 msec_delay(2);

 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);

 if (hw->revision_id == E1000_REVISION_2) {
  if (bus->pci_cmd_word & CMD_MEM_WRT_INVALIDATE)
   e1000_pci_set_mwi(hw);
 }

 return ret_val;
}
