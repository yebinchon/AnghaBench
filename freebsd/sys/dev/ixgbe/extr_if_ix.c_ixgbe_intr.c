
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ phy; TYPE_1__ mac; } ;
struct ix_rx_queue {int irqs; } ;
struct adapter {int task_requests; int dev; int ctx; struct ixgbe_hw hw; struct ix_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;


 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 scalar_t__ IXGBE_DEV_ID_82598AT ;
 int IXGBE_EICR ;
 int IXGBE_EICR_GPI_SDP0_X540 ;
 int IXGBE_EICR_GPI_SDP1 ;
 int IXGBE_EICR_GPI_SDP1_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EICR_GPI_SDP2_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EICR_LSC ;
 int IXGBE_EIMC ;
 int IXGBE_EIMC_LSC ;
 int IXGBE_EIMS ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_REQUEST_TASK_MOD ;
 int IXGBE_REQUEST_TASK_MSF ;
 int IXGBE_REQUEST_TASK_PHY ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int device_printf (int ,char*) ;
 int iflib_admin_intr_deferred (int ) ;
 int ixgbe_if_enable_intr (int ) ;
 scalar_t__ ixgbe_is_sfp (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_mac_82599EB ;
 scalar_t__ ixgbe_mac_X540 ;
 scalar_t__ ixgbe_phy_x550em_ext_t ;

int
ixgbe_intr(void *arg)
{
 struct adapter *adapter = arg;
 struct ix_rx_queue *que = adapter->rx_queues;
 struct ixgbe_hw *hw = &adapter->hw;
 if_ctx_t ctx = adapter->ctx;
 u32 eicr, eicr_mask;

 eicr = IXGBE_READ_REG(hw, IXGBE_EICR);

 ++que->irqs;
 if (eicr == 0) {
  ixgbe_if_enable_intr(ctx);
  return (FILTER_HANDLED);
 }


 if ((hw->device_id == IXGBE_DEV_ID_82598AT) &&
     (eicr & IXGBE_EICR_GPI_SDP1)) {
  device_printf(adapter->dev,
      "\nCRITICAL: FAN FAILURE!! REPLACE IMMEDIATELY!!\n");
  IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EICR_GPI_SDP1_BY_MAC(hw));
 }


 if (eicr & IXGBE_EICR_LSC) {
  IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_EIMC_LSC);
  iflib_admin_intr_deferred(ctx);
 }

 if (ixgbe_is_sfp(hw)) {

  if (hw->mac.type >= ixgbe_mac_X540)
   eicr_mask = IXGBE_EICR_GPI_SDP0_X540;
  else
   eicr_mask = IXGBE_EICR_GPI_SDP2_BY_MAC(hw);

  if (eicr & eicr_mask) {
   IXGBE_WRITE_REG(hw, IXGBE_EICR, eicr_mask);
   adapter->task_requests |= IXGBE_REQUEST_TASK_MOD;
  }

  if ((hw->mac.type == ixgbe_mac_82599EB) &&
      (eicr & IXGBE_EICR_GPI_SDP1_BY_MAC(hw))) {
   IXGBE_WRITE_REG(hw, IXGBE_EICR,
       IXGBE_EICR_GPI_SDP1_BY_MAC(hw));
   adapter->task_requests |= IXGBE_REQUEST_TASK_MSF;
  }
 }


 if ((hw->phy.type == ixgbe_phy_x550em_ext_t) &&
     (eicr & IXGBE_EICR_GPI_SDP0_X540))
  adapter->task_requests |= IXGBE_REQUEST_TASK_PHY;

 return (FILTER_SCHEDULE_THREAD);
}
