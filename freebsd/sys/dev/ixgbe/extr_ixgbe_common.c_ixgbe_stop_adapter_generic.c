
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; int adapter_stopped; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_EICR ;
 int IXGBE_EIMC ;
 int IXGBE_IRQ_CLEAR_MASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (scalar_t__) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_RXDCTL_SWFLSH ;
 int IXGBE_TXDCTL (scalar_t__) ;
 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int TRUE ;
 int ixgbe_disable_pcie_master (struct ixgbe_hw*) ;
 int ixgbe_disable_rx (struct ixgbe_hw*) ;
 int msec_delay (int) ;

s32 ixgbe_stop_adapter_generic(struct ixgbe_hw *hw)
{
 u32 reg_val;
 u16 i;

 DEBUGFUNC("ixgbe_stop_adapter_generic");





 hw->adapter_stopped = TRUE;


 ixgbe_disable_rx(hw);


 IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_IRQ_CLEAR_MASK);


 IXGBE_READ_REG(hw, IXGBE_EICR);


 for (i = 0; i < hw->mac.max_tx_queues; i++)
  IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(i), IXGBE_TXDCTL_SWFLSH);


 for (i = 0; i < hw->mac.max_rx_queues; i++) {
  reg_val = IXGBE_READ_REG(hw, IXGBE_RXDCTL(i));
  reg_val &= ~IXGBE_RXDCTL_ENABLE;
  reg_val |= IXGBE_RXDCTL_SWFLSH;
  IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(i), reg_val);
 }


 IXGBE_WRITE_FLUSH(hw);
 msec_delay(2);





 return ixgbe_disable_pcie_master(hw);
}
