
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int (* identify_sfp ) (struct ixgbe_hw*) ;int reset; int get_firmware_version; int check_link; int setup_link; int (* identify ) (struct ixgbe_hw*) ;} ;
struct ixgbe_phy_info {int type; int sfp_type; TYPE_2__ ops; } ;
struct TYPE_3__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;int get_link_capabilities; int setup_link; } ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_phy_info phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_SUCCESS ;
 int ixgbe_check_phy_link_tnx ;
 int ixgbe_get_copper_link_capabilities_generic ;
 int ixgbe_get_phy_firmware_version_tnx ;
 int ixgbe_get_sfp_init_sequence_offsets (struct ixgbe_hw*,int *,int *) ;
 scalar_t__ ixgbe_media_type_copper ;


 int ixgbe_reset_phy_nl ;
 int ixgbe_setup_copper_link_82598 ;
 int ixgbe_setup_phy_link_tnx ;
 int ixgbe_sfp_type_unknown ;
 int stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*) ;

s32 ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 s32 ret_val = IXGBE_SUCCESS;
 u16 list_offset, data_offset;

 DEBUGFUNC("ixgbe_init_phy_ops_82598");


 phy->ops.identify(hw);


 if (mac->ops.get_media_type(hw) == ixgbe_media_type_copper) {
  mac->ops.setup_link = ixgbe_setup_copper_link_82598;
  mac->ops.get_link_capabilities =
    ixgbe_get_copper_link_capabilities_generic;
 }

 switch (hw->phy.type) {
 case 128:
  phy->ops.setup_link = ixgbe_setup_phy_link_tnx;
  phy->ops.check_link = ixgbe_check_phy_link_tnx;
  phy->ops.get_firmware_version =
     ixgbe_get_phy_firmware_version_tnx;
  break;
 case 129:
  phy->ops.reset = ixgbe_reset_phy_nl;


  ret_val = phy->ops.identify_sfp(hw);
  if (ret_val != IXGBE_SUCCESS)
   goto out;
  else if (hw->phy.sfp_type == ixgbe_sfp_type_unknown) {
   ret_val = IXGBE_ERR_SFP_NOT_SUPPORTED;
   goto out;
  }


  ret_val = ixgbe_get_sfp_init_sequence_offsets(hw,
             &list_offset,
             &data_offset);
  if (ret_val != IXGBE_SUCCESS) {
   ret_val = IXGBE_ERR_SFP_NOT_SUPPORTED;
   goto out;
  }
  break;
 default:
  break;
 }

out:
 return ret_val;
}
