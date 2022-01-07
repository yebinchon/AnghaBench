
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


 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_SUCCESS ;
 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_VFPSRTYPE ;
 int IXGBE_VFREAD_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFRXDCTL (scalar_t__) ;
 int IXGBE_VFTXDCTL (scalar_t__) ;
 int IXGBE_VFWRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int IXGBE_VF_IRQ_CLEAR_MASK ;
 int IXGBE_VTEICR ;
 int IXGBE_VTEIMC ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int TRUE ;
 int msec_delay (int) ;

s32 ixgbe_stop_adapter_vf(struct ixgbe_hw *hw)
{
 u32 reg_val;
 u16 i;





 hw->adapter_stopped = TRUE;


 IXGBE_VFWRITE_REG(hw, IXGBE_VTEIMC, IXGBE_VF_IRQ_CLEAR_MASK);


 IXGBE_VFREAD_REG(hw, IXGBE_VTEICR);


 for (i = 0; i < hw->mac.max_tx_queues; i++)
  IXGBE_VFWRITE_REG(hw, IXGBE_VFTXDCTL(i), IXGBE_TXDCTL_SWFLSH);


 for (i = 0; i < hw->mac.max_rx_queues; i++) {
  reg_val = IXGBE_VFREAD_REG(hw, IXGBE_VFRXDCTL(i));
  reg_val &= ~IXGBE_RXDCTL_ENABLE;
  IXGBE_VFWRITE_REG(hw, IXGBE_VFRXDCTL(i), reg_val);
 }

 IXGBE_WRITE_REG(hw, IXGBE_VFPSRTYPE, 0);


 IXGBE_WRITE_FLUSH(hw);
 msec_delay(2);

 return IXGBE_SUCCESS;
}
