
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* enable_sec_rx_path ) (struct ixgbe_hw*) ;int (* disable_sec_rx_path ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_SUCCESS ;
 int ixgbe_disable_rx (struct ixgbe_hw*) ;
 int ixgbe_enable_rx (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

s32 ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, u32 regval)
{

 DEBUGFUNC("ixgbe_enable_rx_dma_82599");
 hw->mac.ops.disable_sec_rx_path(hw);

 if (regval & IXGBE_RXCTRL_RXEN)
  ixgbe_enable_rx(hw);
 else
  ixgbe_disable_rx(hw);

 hw->mac.ops.enable_sec_rx_path(hw);

 return IXGBE_SUCCESS;
}
