
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_2__ phy; int device_id; TYPE_1__ mac; } ;
struct ix_rx_queue {int msix; } ;
struct adapter {int feat_en; scalar_t__ intr_type; int feat_cap; int num_rx_queues; struct ixgbe_hw hw; struct ix_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;


 scalar_t__ IFLIB_INTR_MSIX ;
 int IXGBE_DEV_ID_X550EM_A_SFP ;
 int IXGBE_DEV_ID_X550EM_A_SFP_N ;
 int IXGBE_DEV_ID_X550EM_X_10G_T ;
 int IXGBE_DEV_ID_X550EM_X_SFP ;
 int IXGBE_EIAC ;
 int IXGBE_EICR_GPI_SDP0_X540 ;
 int IXGBE_EIMS ;
 int IXGBE_EIMS_ECC ;
 int IXGBE_EIMS_ENABLE_MASK ;
 int IXGBE_EIMS_FLOW_DIR ;
 int IXGBE_EIMS_GPI_SDP0 ;
 int IXGBE_EIMS_GPI_SDP0_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EIMS_GPI_SDP1 ;
 int IXGBE_EIMS_GPI_SDP2 ;
 int IXGBE_EIMS_LSC ;
 int IXGBE_EIMS_MAILBOX ;
 int IXGBE_EIMS_OTHER ;
 int IXGBE_EIMS_RTX_QUEUE ;
 int IXGBE_EIMS_TS ;
 int IXGBE_FEATURE_FAN_FAIL ;
 int IXGBE_FEATURE_FDIR ;
 int IXGBE_FEATURE_SRIOV ;
 int IXGBE_FWSM ;
 int IXGBE_FWSM_TS_ENABLED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_enable_queue (struct adapter*,int ) ;





 int ixgbe_phy_x550em_ext_t ;

void
ixgbe_if_enable_intr(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 struct ix_rx_queue *que = adapter->rx_queues;
 u32 mask, fwsm;

 mask = (IXGBE_EIMS_ENABLE_MASK & ~IXGBE_EIMS_RTX_QUEUE);

 switch (adapter->hw.mac.type) {
 case 132:
  mask |= IXGBE_EIMS_ECC;

  mask |= IXGBE_EIMS_GPI_SDP0;

  mask |= IXGBE_EIMS_GPI_SDP1;
  mask |= IXGBE_EIMS_GPI_SDP2;
  break;
 case 131:

  fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM);
  if (fwsm & IXGBE_FWSM_TS_ENABLED)
   mask |= IXGBE_EIMS_TS;
  mask |= IXGBE_EIMS_ECC;
  break;
 case 130:

  mask |= IXGBE_EIMS_TS;
  mask |= IXGBE_EIMS_ECC;
  break;
 case 128:
 case 129:

  if (hw->device_id == IXGBE_DEV_ID_X550EM_X_SFP ||
      hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP ||
      hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP_N ||
      hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T)
   mask |= IXGBE_EIMS_GPI_SDP0_BY_MAC(hw);
  if (hw->phy.type == ixgbe_phy_x550em_ext_t)
   mask |= IXGBE_EICR_GPI_SDP0_X540;
  mask |= IXGBE_EIMS_ECC;
  break;
 default:
  break;
 }


 if (adapter->feat_en & IXGBE_FEATURE_FAN_FAIL)
  mask |= IXGBE_EIMS_GPI_SDP1;

 if (adapter->feat_en & IXGBE_FEATURE_SRIOV)
  mask |= IXGBE_EIMS_MAILBOX;

 if (adapter->feat_en & IXGBE_FEATURE_FDIR)
  mask |= IXGBE_EIMS_FLOW_DIR;

 IXGBE_WRITE_REG(hw, IXGBE_EIMS, mask);


 if (adapter->intr_type == IFLIB_INTR_MSIX) {
  mask = IXGBE_EIMS_ENABLE_MASK;

  mask &= ~IXGBE_EIMS_OTHER;
  mask &= ~IXGBE_EIMS_LSC;
  if (adapter->feat_cap & IXGBE_FEATURE_SRIOV)
   mask &= ~IXGBE_EIMS_MAILBOX;
  IXGBE_WRITE_REG(hw, IXGBE_EIAC, mask);
 }






 for (int i = 0; i < adapter->num_rx_queues; i++, que++)
  ixgbe_enable_queue(adapter, que->msix);

 IXGBE_WRITE_FLUSH(hw);

}
