
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int lan_id; } ;
struct TYPE_4__ {scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int *) ;scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ bus; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_KRM_LINK_CTRL_1 (int ) ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK ;
 int IXGBE_KRM_PMD_DFX_BURNIN (int ) ;
 int IXGBE_KRM_PMD_DFX_BURNIN_TX_RX_KR_LB_MASK ;
 int IXGBE_KRM_PORT_CAR_GEN_CTRL (int ) ;
 int IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_32B ;
 int IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_KRPCS ;
 int IXGBE_KRM_RX_TRN_LINKUP_CTRL (int ) ;
 int IXGBE_KRM_RX_TRN_LINKUP_CTRL_PROTOCOL_BYPASS ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub8 (struct ixgbe_hw*,int ,int ,int ) ;

s32 ixgbe_setup_phy_loopback_x550em(struct ixgbe_hw *hw)
{
 s32 status;
 u32 reg_val;


 status = hw->mac.ops.read_iosf_sb_reg(hw,
     IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status != IXGBE_SUCCESS)
  return status;
 reg_val &= ~IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE;
 reg_val &= ~IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK;
 reg_val |= IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G;
 status = hw->mac.ops.write_iosf_sb_reg(hw,
     IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 if (status != IXGBE_SUCCESS)
  return status;


 status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_PORT_CAR_GEN_CTRL(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status != IXGBE_SUCCESS)
  return status;
 reg_val |= IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_32B;
 reg_val |= IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_KRPCS;
 status = hw->mac.ops.write_iosf_sb_reg(hw,
    IXGBE_KRM_PORT_CAR_GEN_CTRL(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 if (status != IXGBE_SUCCESS)
  return status;


 status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_PMD_DFX_BURNIN(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status != IXGBE_SUCCESS)
  return status;
 reg_val |= IXGBE_KRM_PMD_DFX_BURNIN_TX_RX_KR_LB_MASK;
 status = hw->mac.ops.write_iosf_sb_reg(hw,
    IXGBE_KRM_PMD_DFX_BURNIN(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 if (status != IXGBE_SUCCESS)
  return status;


 status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_RX_TRN_LINKUP_CTRL(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status != IXGBE_SUCCESS)
  return status;
 reg_val |= IXGBE_KRM_RX_TRN_LINKUP_CTRL_PROTOCOL_BYPASS;
 status = hw->mac.ops.write_iosf_sb_reg(hw,
    IXGBE_KRM_RX_TRN_LINKUP_CTRL(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);

 return status;
}
