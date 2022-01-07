
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DMACR ;
 int IXGBE_DMACR_DMAC_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_dmac_config_tcs_X550 (struct ixgbe_hw*) ;

s32 ixgbe_dmac_update_tcs_X550(struct ixgbe_hw *hw)
{
 u32 reg;

 DEBUGFUNC("ixgbe_dmac_update_tcs_X550");


 reg = IXGBE_READ_REG(hw, IXGBE_DMACR);
 reg &= ~IXGBE_DMACR_DMAC_EN;
 IXGBE_WRITE_REG(hw, IXGBE_DMACR, reg);

 ixgbe_dmac_config_tcs_X550(hw);


 reg = IXGBE_READ_REG(hw, IXGBE_DMACR);
 reg |= IXGBE_DMACR_DMAC_EN;
 IXGBE_WRITE_REG(hw, IXGBE_DMACR, reg);

 return IXGBE_SUCCESS;
}
