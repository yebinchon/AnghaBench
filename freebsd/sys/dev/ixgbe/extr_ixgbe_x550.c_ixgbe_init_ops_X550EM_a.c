
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_media_type ) (struct ixgbe_hw*) ;int setup_eee; int * setup_fc; int fc_autoneg; int release_swfw_sync; int acquire_swfw_sync; int write_iosf_sb_reg; int read_iosf_sb_reg; } ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct TYPE_4__ {int eee_speeds_supported; int eee_speeds_advertised; } ;
struct ixgbe_hw {int device_id; TYPE_2__ phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;


 int IXGBE_DEV_ID_X550EM_A_SGMII ;
 int IXGBE_DEV_ID_X550EM_A_SGMII_L ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int ixgbe_acquire_swfw_sync_X550a ;
 int ixgbe_fc_autoneg_backplane_x550em_a ;
 int ixgbe_fc_autoneg_fiber_x550em_a ;
 int * ixgbe_fc_autoneg_fw ;
 int ixgbe_fc_autoneg_sgmii_x550em_a ;
 int ixgbe_init_ops_X550EM (struct ixgbe_hw*) ;


 int ixgbe_read_iosf_sb_reg_x550 ;
 int ixgbe_read_iosf_sb_reg_x550a ;
 int ixgbe_release_swfw_sync_X550a ;
 int ixgbe_setup_eee_fw ;
 int * ixgbe_setup_fc_backplane_x550em_a ;
 int ixgbe_write_iosf_sb_reg_x550 ;
 int ixgbe_write_iosf_sb_reg_x550a ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_init_ops_X550EM_a(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_X550EM_a");


 ret_val = ixgbe_init_ops_X550EM(hw);

 if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SGMII ||
     hw->device_id == IXGBE_DEV_ID_X550EM_A_SGMII_L) {
  mac->ops.read_iosf_sb_reg = ixgbe_read_iosf_sb_reg_x550;
  mac->ops.write_iosf_sb_reg = ixgbe_write_iosf_sb_reg_x550;
 } else {
  mac->ops.read_iosf_sb_reg = ixgbe_read_iosf_sb_reg_x550a;
  mac->ops.write_iosf_sb_reg = ixgbe_write_iosf_sb_reg_x550a;
 }
 mac->ops.acquire_swfw_sync = ixgbe_acquire_swfw_sync_X550a;
 mac->ops.release_swfw_sync = ixgbe_release_swfw_sync_X550a;

 switch (mac->ops.get_media_type(hw)) {
 case 128:
  mac->ops.setup_fc = ((void*)0);
  mac->ops.fc_autoneg = ixgbe_fc_autoneg_fiber_x550em_a;
  break;
 case 129:
  mac->ops.fc_autoneg = ixgbe_fc_autoneg_backplane_x550em_a;
  mac->ops.setup_fc = ixgbe_setup_fc_backplane_x550em_a;
  break;
 default:
  break;
 }

 switch (hw->device_id) {
 case 131:
 case 130:
  mac->ops.fc_autoneg = ixgbe_fc_autoneg_sgmii_x550em_a;
  mac->ops.setup_fc = ixgbe_fc_autoneg_fw;
  mac->ops.setup_eee = ixgbe_setup_eee_fw;
  hw->phy.eee_speeds_supported = IXGBE_LINK_SPEED_100_FULL |
            IXGBE_LINK_SPEED_1GB_FULL;
  hw->phy.eee_speeds_advertised = hw->phy.eee_speeds_supported;
  break;
 default:
  break;
 }

 return ret_val;
}
