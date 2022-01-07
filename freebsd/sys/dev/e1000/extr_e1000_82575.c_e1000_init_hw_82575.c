
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ rar_entry_count; scalar_t__ mta_reg_count; scalar_t__ uta_reg_count; TYPE_1__ ops; } ;
struct TYPE_5__ {int mtu; } ;
struct TYPE_6__ {TYPE_2__ _82575; } ;
struct e1000_hw {TYPE_3__ dev_spec; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_MTA ;
 int E1000_UTA ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;
 int e1000_clear_hw_cntrs_82575 (struct e1000_hw*) ;
 int e1000_init_rx_addrs_generic (struct e1000_hw*,scalar_t__) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*) ;

s32 e1000_init_hw_82575(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 u16 i, rar_count = mac->rar_entry_count;

 DEBUGFUNC("e1000_init_hw_82575");


 ret_val = mac->ops.id_led_init(hw);
 if (ret_val) {
  DEBUGOUT("Error initializing identification LED\n");

 }


 DEBUGOUT("Initializing the IEEE VLAN\n");
 mac->ops.clear_vfta(hw);


 e1000_init_rx_addrs_generic(hw, rar_count);


 DEBUGOUT("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);


 DEBUGOUT("Zeroing the UTA\n");
 for (i = 0; i < mac->uta_reg_count; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_UTA, i, 0);


 ret_val = mac->ops.setup_link(hw);


 hw->dev_spec._82575.mtu = 1500;







 e1000_clear_hw_cntrs_82575(hw);

 return ret_val;
}
