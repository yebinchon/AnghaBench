
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_SUCCESS ;
 int ixgbe_disable_rx (struct ixgbe_hw*) ;
 int ixgbe_enable_rx (struct ixgbe_hw*) ;

s32 ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval)
{
 DEBUGFUNC("ixgbe_enable_rx_dma_generic");

 if (regval & IXGBE_RXCTRL_RXEN)
  ixgbe_enable_rx(hw);
 else
  ixgbe_disable_rx(hw);

 return IXGBE_SUCCESS;
}
