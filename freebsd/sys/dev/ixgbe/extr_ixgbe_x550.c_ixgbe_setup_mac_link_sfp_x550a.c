
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int,int ,int*) ;scalar_t__ (* write_reg ) (struct ixgbe_hw*,int,int ,int) ;} ;
struct TYPE_10__ {int addr; TYPE_4__ ops; } ;
struct TYPE_8__ {int lan_id; int instance_id; } ;
struct TYPE_6__ {scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int*) ;scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_5__ phy; TYPE_3__ bus; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGOUT (char*) ;
 int FALSE ;
 int IXGBE_CS4223_SKU_ID ;
 int IXGBE_CS4227_EDC_MODE_CX1 ;
 int IXGBE_CS4227_EDC_MODE_SR ;
 int IXGBE_CS4227_EFUSE_PDF_SKU ;
 int IXGBE_CS4227_LINE_SPARE24_LSB ;
 scalar_t__ IXGBE_DEV_ID_X550EM_A_SFP_N ;
 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ;
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20 (int) ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR ;
 int IXGBE_MDIO_ZERO_DEV_TYPE ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 scalar_t__ IXGBE_SUCCESS ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_setup_kr_speed_x550em (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_setup_sfi_x550a (struct ixgbe_hw*,int *) ;
 scalar_t__ ixgbe_supported_sfp_modules_X550em (struct ixgbe_hw*,int*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int,int ,int*) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int,int ,int) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int,int ,int*) ;

s32 ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw,
        ixgbe_link_speed speed,
        bool autoneg_wait_to_complete)
{
 s32 ret_val;
 u16 reg_phy_ext;
 bool setup_linear = FALSE;
 u32 reg_slice, reg_phy_int, slice_offset;

 UNREFERENCED_1PARAMETER(autoneg_wait_to_complete);


 ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);




 if (ret_val == IXGBE_ERR_SFP_NOT_PRESENT)
  return IXGBE_SUCCESS;

 if (ret_val != IXGBE_SUCCESS)
  return ret_val;

 if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP_N) {

  ret_val = hw->mac.ops.read_iosf_sb_reg(hw,
       IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
       IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_phy_int);

  if (ret_val != IXGBE_SUCCESS)
   return ret_val;

  reg_phy_int &= IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA;
  if (!setup_linear)
   reg_phy_int |= IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR;

  ret_val = hw->mac.ops.write_iosf_sb_reg(hw,
       IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
       IXGBE_SB_IOSF_TARGET_KR_PHY, reg_phy_int);

  if (ret_val != IXGBE_SUCCESS)
   return ret_val;


  ret_val = ixgbe_setup_sfi_x550a(hw, &speed);
 } else {

  ixgbe_setup_kr_speed_x550em(hw, speed);

  if (hw->phy.addr == 0x0 || hw->phy.addr == 0xFFFF) {

   DEBUGOUT("Invalid NW_MNG_IF_SEL.MDIO_PHY_ADD value\n");
   return IXGBE_ERR_PHY_ADDR_INVALID;
  }


  ret_val = hw->phy.ops.read_reg(hw, IXGBE_CS4227_EFUSE_PDF_SKU,
     IXGBE_MDIO_ZERO_DEV_TYPE, &reg_phy_ext);

  if (ret_val != IXGBE_SUCCESS)
   return ret_val;




  if (reg_phy_ext == IXGBE_CS4223_SKU_ID)
   slice_offset = (hw->bus.lan_id +
     (hw->bus.instance_id << 1)) << 12;
  else
   slice_offset = hw->bus.lan_id << 12;


  reg_slice = IXGBE_CS4227_LINE_SPARE24_LSB + slice_offset;

  ret_val = hw->phy.ops.read_reg(hw, reg_slice,
     IXGBE_MDIO_ZERO_DEV_TYPE, &reg_phy_ext);

  if (ret_val != IXGBE_SUCCESS)
   return ret_val;

  reg_phy_ext &= ~((IXGBE_CS4227_EDC_MODE_CX1 << 1) |
     (IXGBE_CS4227_EDC_MODE_SR << 1));

  if (setup_linear)
   reg_phy_ext = (IXGBE_CS4227_EDC_MODE_CX1 << 1) | 0x1;
  else
   reg_phy_ext = (IXGBE_CS4227_EDC_MODE_SR << 1) | 0x1;
  ret_val = hw->phy.ops.write_reg(hw, reg_slice,
      IXGBE_MDIO_ZERO_DEV_TYPE, reg_phy_ext);


  ret_val = hw->phy.ops.read_reg(hw, reg_slice,
     IXGBE_MDIO_ZERO_DEV_TYPE, &reg_phy_ext);
 }
 return ret_val;
}
