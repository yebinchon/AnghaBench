
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * init_led_link_act; int * setup_eee; int * setup_fc; int release_swfw_sync; int acquire_swfw_sync; int write_iosf_sb_reg; int read_iosf_sb_reg; } ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_3__ {int write_link_unlocked; int write_link; int read_link_unlocked; int read_link; } ;
struct ixgbe_link_info {int addr; TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; struct ixgbe_link_info link; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_CS4227 ;
 scalar_t__ IXGBE_DEV_ID_X550EM_X_1G_T ;
 int ixgbe_acquire_swfw_sync_X550em ;
 int ixgbe_init_ops_X550EM (struct ixgbe_hw*) ;
 int ixgbe_read_i2c_combined_generic ;
 int ixgbe_read_i2c_combined_generic_unlocked ;
 int ixgbe_read_iosf_sb_reg_x550 ;
 int ixgbe_release_swfw_sync_X550em ;
 int ixgbe_write_i2c_combined_generic ;
 int ixgbe_write_i2c_combined_generic_unlocked ;
 int ixgbe_write_iosf_sb_reg_x550 ;

s32 ixgbe_init_ops_X550EM_x(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_link_info *link = &hw->link;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_X550EM_x");


 ret_val = ixgbe_init_ops_X550EM(hw);

 mac->ops.read_iosf_sb_reg = ixgbe_read_iosf_sb_reg_x550;
 mac->ops.write_iosf_sb_reg = ixgbe_write_iosf_sb_reg_x550;
 mac->ops.acquire_swfw_sync = ixgbe_acquire_swfw_sync_X550em;
 mac->ops.release_swfw_sync = ixgbe_release_swfw_sync_X550em;
 link->ops.read_link = ixgbe_read_i2c_combined_generic;
 link->ops.read_link_unlocked = ixgbe_read_i2c_combined_generic_unlocked;
 link->ops.write_link = ixgbe_write_i2c_combined_generic;
 link->ops.write_link_unlocked =
          ixgbe_write_i2c_combined_generic_unlocked;
 link->addr = IXGBE_CS4227;

 if (hw->device_id == IXGBE_DEV_ID_X550EM_X_1G_T) {
  mac->ops.setup_fc = ((void*)0);
  mac->ops.setup_eee = ((void*)0);
  mac->ops.init_led_link_act = ((void*)0);
 }

 return ret_val;
}
