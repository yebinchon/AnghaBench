
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_RXCTRL ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_enable_rx_dma_82598(struct ixgbe_hw *hw, u32 regval)
{
 DEBUGFUNC("ixgbe_enable_rx_dma_82598");

 IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, regval);

 return IXGBE_SUCCESS;
}
