
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int requested_mode; int current_mode; int fc_was_autonegged; scalar_t__ disable_fc_autoneg; } ;
struct TYPE_7__ {int lan_id; } ;
struct TYPE_5__ {scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int*) ;int (* check_link ) (struct ixgbe_hw*,int *,int*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ fc; TYPE_3__ bus; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int FALSE ;
 int IXGBE_ERROR_SOFTWARE ;
 int IXGBE_ERROR_UNSUPPORTED ;
 scalar_t__ IXGBE_ERR_FC_NOT_NEGOTIATED ;
 int IXGBE_KRM_AN_CNTL_1 (int ) ;
 int IXGBE_KRM_AN_CNTL_1_ASM_PAUSE ;
 int IXGBE_KRM_AN_CNTL_1_SYM_PAUSE ;
 int IXGBE_KRM_LINK_S1 (int ) ;
 int IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE ;
 int IXGBE_KRM_LP_BASE_PAGE_HIGH (int ) ;
 int IXGBE_KRM_LP_BASE_PAGE_HIGH_ASM_PAUSE ;
 int IXGBE_KRM_LP_BASE_PAGE_HIGH_SYM_PAUSE ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 scalar_t__ IXGBE_SUCCESS ;
 int TRUE ;
 scalar_t__ ixgbe_negotiate_fc (struct ixgbe_hw*,int,int,int ,int ,int ,int ) ;
 int stub1 (struct ixgbe_hw*,int *,int*,int ) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int*) ;

void ixgbe_fc_autoneg_backplane_x550em_a(struct ixgbe_hw *hw)
{
 u32 link_s1, lp_an_page_low, an_cntl_1;
 s32 status = IXGBE_ERR_FC_NOT_NEGOTIATED;
 ixgbe_link_speed speed;
 bool link_up;






 if (hw->fc.disable_fc_autoneg) {
  ERROR_REPORT1(IXGBE_ERROR_UNSUPPORTED,
        "Flow control autoneg is disabled");
  goto out;
 }

 hw->mac.ops.check_link(hw, &speed, &link_up, FALSE);
 if (!link_up) {
  ERROR_REPORT1(IXGBE_ERROR_SOFTWARE, "The link is down");
  goto out;
 }


 status = hw->mac.ops.read_iosf_sb_reg(hw,
     IXGBE_KRM_LINK_S1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, &link_s1);

 if (status != IXGBE_SUCCESS ||
     (link_s1 & IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE) == 0) {
  DEBUGOUT("Auto-Negotiation did not complete\n");
  status = IXGBE_ERR_FC_NOT_NEGOTIATED;
  goto out;
 }




 status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_AN_CNTL_1(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &an_cntl_1);

 if (status != IXGBE_SUCCESS) {
  DEBUGOUT("Auto-Negotiation did not complete\n");
  goto out;
 }

 status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_LP_BASE_PAGE_HIGH(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &lp_an_page_low);

 if (status != IXGBE_SUCCESS) {
  DEBUGOUT("Auto-Negotiation did not complete\n");
  goto out;
 }

 status = ixgbe_negotiate_fc(hw, an_cntl_1, lp_an_page_low,
        IXGBE_KRM_AN_CNTL_1_SYM_PAUSE,
        IXGBE_KRM_AN_CNTL_1_ASM_PAUSE,
        IXGBE_KRM_LP_BASE_PAGE_HIGH_SYM_PAUSE,
        IXGBE_KRM_LP_BASE_PAGE_HIGH_ASM_PAUSE);

out:
 if (status == IXGBE_SUCCESS) {
  hw->fc.fc_was_autonegged = TRUE;
 } else {
  hw->fc.fc_was_autonegged = FALSE;
  hw->fc.current_mode = hw->fc.requested_mode;
 }
}
