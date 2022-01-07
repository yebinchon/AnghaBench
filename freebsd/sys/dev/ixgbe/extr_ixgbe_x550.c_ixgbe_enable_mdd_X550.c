
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DMATXCTL ;
 int IXGBE_DMATXCTL_MBINTEN ;
 int IXGBE_DMATXCTL_MDP_EN ;
 int IXGBE_RDRXCTL ;
 int IXGBE_RDRXCTL_MBINTEN ;
 int IXGBE_RDRXCTL_MDP_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

void ixgbe_enable_mdd_X550(struct ixgbe_hw *hw)
{
 u32 reg;

 DEBUGFUNC("ixgbe_enable_mdd_X550");


 reg = IXGBE_READ_REG(hw, IXGBE_DMATXCTL);
 reg |= (IXGBE_DMATXCTL_MDP_EN | IXGBE_DMATXCTL_MBINTEN);
 IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL, reg);


 reg = IXGBE_READ_REG(hw, IXGBE_RDRXCTL);
 reg |= (IXGBE_RDRXCTL_MDP_EN | IXGBE_RDRXCTL_MBINTEN);
 IXGBE_WRITE_REG(hw, IXGBE_RDRXCTL, reg);
}
