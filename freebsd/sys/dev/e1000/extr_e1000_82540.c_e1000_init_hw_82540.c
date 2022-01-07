
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ type; scalar_t__ mta_reg_count; TYPE_1__ ops; int rar_entry_count; } ;
struct e1000_hw {scalar_t__ device_id; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_RO_DIS ;
 scalar_t__ E1000_DEV_ID_82546GB_QUAD_COPPER ;
 scalar_t__ E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 ;
 int E1000_MTA ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_TXDCTL (int ) ;
 int E1000_TXDCTL_FULL_TX_DESC_WB ;
 int E1000_TXDCTL_WTHRESH ;
 int E1000_VET ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;
 scalar_t__ e1000_82545_rev_3 ;
 int e1000_clear_hw_cntrs_82540 (struct e1000_hw*) ;
 int e1000_init_rx_addrs_generic (struct e1000_hw*,int ) ;
 int e1000_pcix_mmrbc_workaround_generic (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_hw_82540(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 txdctl, ctrl_ext;
 s32 ret_val;
 u16 i;

 DEBUGFUNC("e1000_init_hw_82540");


 ret_val = mac->ops.id_led_init(hw);
 if (ret_val) {
  DEBUGOUT("Error initializing identification LED\n");

 }


 DEBUGOUT("Initializing the IEEE VLAN\n");
 if (mac->type < e1000_82545_rev_3)
  E1000_WRITE_REG(hw, E1000_VET, 0);

 mac->ops.clear_vfta(hw);


 e1000_init_rx_addrs_generic(hw, mac->rar_entry_count);


 DEBUGOUT("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++) {
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);
  E1000_WRITE_FLUSH(hw);
 }

 if (mac->type < e1000_82545_rev_3)
  e1000_pcix_mmrbc_workaround_generic(hw);


 ret_val = mac->ops.setup_link(hw);

 txdctl = E1000_READ_REG(hw, E1000_TXDCTL(0));
 txdctl = (txdctl & ~E1000_TXDCTL_WTHRESH) |
    E1000_TXDCTL_FULL_TX_DESC_WB;
 E1000_WRITE_REG(hw, E1000_TXDCTL(0), txdctl);







 e1000_clear_hw_cntrs_82540(hw);

 if ((hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER) ||
     (hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3)) {
  ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);




  ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 }

 return ret_val;
}
