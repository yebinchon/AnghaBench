
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* check_overtemp ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ ops; } ;
struct TYPE_5__ {int type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
struct adapter {int feat_en; int task_requests; int ctx; struct ixgbe_hw hw; int fdir_reinit; int link_irq; } ;
typedef int s32 ;


 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int IXGBE_EICR ;
 int IXGBE_EICR_ECC ;
 int IXGBE_EICR_FLOW_DIR ;
 int IXGBE_EICR_GPI_SDP0_X540 ;
 int IXGBE_EICR_GPI_SDP0_X550EM_a ;
 int IXGBE_EICR_GPI_SDP1_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EICR_GPI_SDP2_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EICR_LSC ;
 int IXGBE_EICR_MAILBOX ;
 int IXGBE_EICR_RTX_QUEUE ;
 int IXGBE_EICR_TS ;
 int IXGBE_EICS ;
 int IXGBE_EIMC ;
 int IXGBE_EIMC_LSC ;
 int IXGBE_EIMC_OTHER ;
 int IXGBE_ERR_OVERTEMP ;
 int IXGBE_FEATURE_FAN_FAIL ;
 int IXGBE_FEATURE_FDIR ;
 int IXGBE_FEATURE_SRIOV ;
 int IXGBE_FEATURE_TEMP_SENSOR ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_REQUEST_TASK_FDIR ;
 int IXGBE_REQUEST_TASK_LSC ;
 int IXGBE_REQUEST_TASK_MBX ;
 int IXGBE_REQUEST_TASK_MOD ;
 int IXGBE_REQUEST_TASK_MSF ;
 int IXGBE_REQUEST_TASK_PHY ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int TRUE ;
 int atomic_cmpset_int (int *,int ,int) ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 int ixgbe_check_fan_failure (struct adapter*,int,int ) ;
 scalar_t__ ixgbe_is_sfp (struct ixgbe_hw*) ;
 int ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_mac_82599EB ;
 scalar_t__ ixgbe_mac_X540 ;

 scalar_t__ ixgbe_phy_x550em_ext_t ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

__attribute__((used)) static int
ixgbe_msix_link(void *arg)
{
 struct adapter *adapter = arg;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 eicr, eicr_mask;
 s32 retval;

 ++adapter->link_irq;


 IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_EIMC_OTHER);


 eicr = IXGBE_READ_REG(hw, IXGBE_EICS);

 eicr &= ~IXGBE_EICR_RTX_QUEUE;

 IXGBE_WRITE_REG(hw, IXGBE_EICR, eicr);


 if (eicr & IXGBE_EICR_LSC) {
  IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_EIMC_LSC);
  adapter->task_requests |= IXGBE_REQUEST_TASK_LSC;
 }

 if (adapter->hw.mac.type != ixgbe_mac_82598EB) {
  if ((adapter->feat_en & IXGBE_FEATURE_FDIR) &&
      (eicr & IXGBE_EICR_FLOW_DIR)) {

   if (!atomic_cmpset_int(&adapter->fdir_reinit, 0, 1))
    return (FILTER_HANDLED);

   IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_EICR_FLOW_DIR);
   adapter->task_requests |= IXGBE_REQUEST_TASK_FDIR;
  } else
   if (eicr & IXGBE_EICR_ECC) {
    device_printf(iflib_get_dev(adapter->ctx),
       "\nCRITICAL: ECC ERROR!! Please Reboot!!\n");
    IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_ECC);
   }


  if (adapter->feat_en & IXGBE_FEATURE_TEMP_SENSOR) {
   switch (adapter->hw.mac.type) {
   case 128:
    if (!(eicr & IXGBE_EICR_GPI_SDP0_X550EM_a))
     break;
    IXGBE_WRITE_REG(hw, IXGBE_EIMC,
        IXGBE_EICR_GPI_SDP0_X550EM_a);
    IXGBE_WRITE_REG(hw, IXGBE_EICR,
        IXGBE_EICR_GPI_SDP0_X550EM_a);
    retval = hw->phy.ops.check_overtemp(hw);
    if (retval != IXGBE_ERR_OVERTEMP)
     break;
    device_printf(iflib_get_dev(adapter->ctx),
        "\nCRITICAL: OVER TEMP!! PHY IS SHUT DOWN!!\n");
    device_printf(iflib_get_dev(adapter->ctx),
        "System shutdown required!\n");
    break;
   default:
    if (!(eicr & IXGBE_EICR_TS))
     break;
    retval = hw->phy.ops.check_overtemp(hw);
    if (retval != IXGBE_ERR_OVERTEMP)
     break;
    device_printf(iflib_get_dev(adapter->ctx),
        "\nCRITICAL: OVER TEMP!! PHY IS SHUT DOWN!!\n");
    device_printf(iflib_get_dev(adapter->ctx),
        "System shutdown required!\n");
    IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_TS);
    break;
   }
  }


  if ((adapter->feat_en & IXGBE_FEATURE_SRIOV) &&
      (eicr & IXGBE_EICR_MAILBOX))
   adapter->task_requests |= IXGBE_REQUEST_TASK_MBX;
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


 if (adapter->feat_en & IXGBE_FEATURE_FAN_FAIL) {
  ixgbe_check_fan_failure(adapter, eicr, TRUE);
  IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP1_BY_MAC(hw));
 }


 if ((hw->phy.type == ixgbe_phy_x550em_ext_t) &&
     (eicr & IXGBE_EICR_GPI_SDP0_X540)) {
  IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP0_X540);
  adapter->task_requests |= IXGBE_REQUEST_TASK_PHY;
 }

 return (adapter->task_requests != 0) ? FILTER_SCHEDULE_THREAD : FILTER_HANDLED;
}
