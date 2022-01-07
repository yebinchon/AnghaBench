
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int watchdog_timer; int fcoe_tc; scalar_t__ fcoe_en; } ;
struct TYPE_4__ {TYPE_1__ dmac_config; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DMACR ;
 int IXGBE_DMACR_DMACWT_MASK ;
 int IXGBE_DMACR_DMAC_EN ;
 int IXGBE_DMACR_EN_MNG_IND ;
 int IXGBE_DMACR_HIGH_PRI_TC_MASK ;
 int IXGBE_DMACR_HIGH_PRI_TC_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_dmac_config_tcs_X550 (struct ixgbe_hw*) ;

s32 ixgbe_dmac_config_X550(struct ixgbe_hw *hw)
{
 u32 reg, high_pri_tc;

 DEBUGFUNC("ixgbe_dmac_config_X550");


 reg = IXGBE_READ_REG(hw, IXGBE_DMACR);
 reg &= ~IXGBE_DMACR_DMAC_EN;
 IXGBE_WRITE_REG(hw, IXGBE_DMACR, reg);


 if (!hw->mac.dmac_config.watchdog_timer)
  goto out;

 ixgbe_dmac_config_tcs_X550(hw);


 reg = IXGBE_READ_REG(hw, IXGBE_DMACR);


 reg &= ~IXGBE_DMACR_DMACWT_MASK;
 reg |= (hw->mac.dmac_config.watchdog_timer * 100) / 4096;

 reg &= ~IXGBE_DMACR_HIGH_PRI_TC_MASK;

 if (hw->mac.dmac_config.fcoe_en) {
  high_pri_tc = 1 << hw->mac.dmac_config.fcoe_tc;
  reg |= ((high_pri_tc << IXGBE_DMACR_HIGH_PRI_TC_SHIFT) &
   IXGBE_DMACR_HIGH_PRI_TC_MASK);
 }
 reg |= IXGBE_DMACR_EN_MNG_IND;


 reg |= IXGBE_DMACR_DMAC_EN;
 IXGBE_WRITE_REG(hw, IXGBE_DMACR, reg);

out:
 return IXGBE_SUCCESS;
}
