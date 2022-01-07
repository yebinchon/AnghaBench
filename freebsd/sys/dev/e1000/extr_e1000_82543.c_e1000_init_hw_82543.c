
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int (* setup_link ) (struct e1000_hw*) ;int (* clear_vfta ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ mta_reg_count; scalar_t__ type; TYPE_2__ ops; int rar_entry_count; } ;
struct e1000_dev_spec_82543 {scalar_t__ dma_fairness; } ;
struct TYPE_3__ {struct e1000_dev_spec_82543 _82543; } ;
struct e1000_hw {struct e1000_mac_info mac; TYPE_1__ dev_spec; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_PRIOR ;
 int E1000_MTA ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_VET ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;
 scalar_t__ e1000_82543 ;
 int e1000_clear_hw_cntrs_82543 (struct e1000_hw*) ;
 int e1000_init_rx_addrs_generic (struct e1000_hw*,int ) ;
 int e1000_pcix_mmrbc_workaround_generic (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_hw_82543(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_dev_spec_82543 *dev_spec = &hw->dev_spec._82543;
 u32 ctrl;
 s32 ret_val;
 u16 i;

 DEBUGFUNC("e1000_init_hw_82543");


 E1000_WRITE_REG(hw, E1000_VET, 0);
 mac->ops.clear_vfta(hw);


 e1000_init_rx_addrs_generic(hw, mac->rar_entry_count);


 DEBUGOUT("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++) {
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);
  E1000_WRITE_FLUSH(hw);
 }






 if (hw->mac.type == e1000_82543 && dev_spec->dma_fairness) {
  ctrl = E1000_READ_REG(hw, E1000_CTRL);
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_PRIOR);
 }

 e1000_pcix_mmrbc_workaround_generic(hw);


 ret_val = mac->ops.setup_link(hw);







 e1000_clear_hw_cntrs_82543(hw);

 return ret_val;
}
