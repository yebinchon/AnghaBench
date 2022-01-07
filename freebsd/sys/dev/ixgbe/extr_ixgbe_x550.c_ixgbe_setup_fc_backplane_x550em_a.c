
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int lan_id; } ;
struct TYPE_6__ {scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int*) ;scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct TYPE_5__ {int requested_mode; scalar_t__ strict_ieee; } ;
struct ixgbe_hw {TYPE_4__ bus; TYPE_3__ mac; TYPE_1__ fc; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_ERROR_ARGUMENT ;
 int IXGBE_ERROR_UNSUPPORTED ;
 scalar_t__ IXGBE_ERR_CONFIG ;
 scalar_t__ IXGBE_ERR_INVALID_LINK_SETTINGS ;
 int IXGBE_KRM_AN_CNTL_1 (int ) ;
 int IXGBE_KRM_AN_CNTL_1_ASM_PAUSE ;
 int IXGBE_KRM_AN_CNTL_1_SYM_PAUSE ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 scalar_t__ IXGBE_SUCCESS ;
 int ixgbe_fc_default ;




 scalar_t__ ixgbe_restart_an_internal_phy_x550em (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int) ;

s32 ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_SUCCESS;
 u32 an_cntl = 0;

 DEBUGFUNC("ixgbe_setup_fc_backplane_x550em_a");


 if (hw->fc.strict_ieee && hw->fc.requested_mode == 129) {
  ERROR_REPORT1(IXGBE_ERROR_UNSUPPORTED,
         "ixgbe_fc_rx_pause not valid in strict IEEE mode\n");
  return IXGBE_ERR_INVALID_LINK_SETTINGS;
 }

 if (hw->fc.requested_mode == ixgbe_fc_default)
  hw->fc.requested_mode = 131;





 status = hw->mac.ops.read_iosf_sb_reg(hw,
     IXGBE_KRM_AN_CNTL_1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, &an_cntl);

 if (status != IXGBE_SUCCESS) {
  DEBUGOUT("Auto-Negotiation did not complete\n");
  return status;
 }
 switch (hw->fc.requested_mode) {
 case 130:

  an_cntl &= ~(IXGBE_KRM_AN_CNTL_1_SYM_PAUSE |
        IXGBE_KRM_AN_CNTL_1_ASM_PAUSE);
  break;
 case 128:



  an_cntl |= IXGBE_KRM_AN_CNTL_1_ASM_PAUSE;
  an_cntl &= ~IXGBE_KRM_AN_CNTL_1_SYM_PAUSE;
  break;
 case 129:
 case 131:

  an_cntl |= IXGBE_KRM_AN_CNTL_1_SYM_PAUSE |
      IXGBE_KRM_AN_CNTL_1_ASM_PAUSE;
  break;
 default:
  ERROR_REPORT1(IXGBE_ERROR_ARGUMENT,
         "Flow control param set incorrectly\n");
  return IXGBE_ERR_CONFIG;
 }

 status = hw->mac.ops.write_iosf_sb_reg(hw,
     IXGBE_KRM_AN_CNTL_1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, an_cntl);


 status = ixgbe_restart_an_internal_phy_x550em(hw);

 return status;
}
