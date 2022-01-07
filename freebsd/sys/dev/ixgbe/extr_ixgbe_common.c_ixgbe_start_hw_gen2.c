
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_DCA_RXCTRL (scalar_t__) ;
 scalar_t__ IXGBE_DCA_RXCTRL_DATA_WRO_EN ;
 scalar_t__ IXGBE_DCA_RXCTRL_HEAD_WRO_EN ;
 int IXGBE_DCA_TXCTRL_82599 (scalar_t__) ;
 scalar_t__ IXGBE_DCA_TXCTRL_DESC_WRO_EN ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RTTBCNRC ;
 int IXGBE_RTTDQSEL ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;

s32 ixgbe_start_hw_gen2(struct ixgbe_hw *hw)
{
 u32 i;
 u32 regval;


 for (i = 0; i < hw->mac.max_tx_queues; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RTTDQSEL, i);
  IXGBE_WRITE_REG(hw, IXGBE_RTTBCNRC, 0);
 }
 IXGBE_WRITE_FLUSH(hw);


 for (i = 0; i < hw->mac.max_tx_queues; i++) {
  regval = IXGBE_READ_REG(hw, IXGBE_DCA_TXCTRL_82599(i));
  regval &= ~IXGBE_DCA_TXCTRL_DESC_WRO_EN;
  IXGBE_WRITE_REG(hw, IXGBE_DCA_TXCTRL_82599(i), regval);
 }

 for (i = 0; i < hw->mac.max_rx_queues; i++) {
  regval = IXGBE_READ_REG(hw, IXGBE_DCA_RXCTRL(i));
  regval &= ~(IXGBE_DCA_RXCTRL_DATA_WRO_EN |
       IXGBE_DCA_RXCTRL_HEAD_WRO_EN);
  IXGBE_WRITE_REG(hw, IXGBE_DCA_RXCTRL(i), regval);
 }

 return IXGBE_SUCCESS;
}
