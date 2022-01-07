
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int if_type; int os; } ;
typedef TYPE_1__ sli4_t ;
typedef int int32_t ;


 int SLI4_FW_READY_TIMEOUT_MSEC ;


 int SLI4_PCI_SOFT_RESET_CSR ;
 scalar_t__ SLI4_PCI_SOFT_RESET_MASK ;
 scalar_t__ SLI4_PHYDEV_CONTROL_FRST ;
 int SLI4_REG_PHYSDEV_CONTROL ;
 scalar_t__ ocs_config_read32 (int ,int ) ;
 int ocs_config_write32 (int ,int ,scalar_t__) ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_test (int ,char*,int) ;
 int sli_reg_write (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ sli_wait_for_fw_ready (TYPE_1__*,int ) ;

int32_t
sli_fw_reset(sli4_t *sli4)
{
 uint32_t val;
 uint32_t ready;




 ready = sli_wait_for_fw_ready(sli4, SLI4_FW_READY_TIMEOUT_MSEC);
 if (!ready) {
  ocs_log_crit(sli4->os, "FW status is NOT ready\n");
  return -1;
 }
 switch(sli4->if_type) {
 case 129:

  val = ocs_config_read32(sli4->os, SLI4_PCI_SOFT_RESET_CSR);
  val |= SLI4_PCI_SOFT_RESET_MASK;
  ocs_config_write32(sli4->os, SLI4_PCI_SOFT_RESET_CSR, val);
  break;
 case 128:


  val = SLI4_PHYDEV_CONTROL_FRST;
  sli_reg_write(sli4, SLI4_REG_PHYSDEV_CONTROL, val);
  break;
 default:
  ocs_log_test(sli4->os, "Unexpected iftype %d\n", sli4->if_type);
  return -1;
  break;
 }


 ready = sli_wait_for_fw_ready(sli4, SLI4_FW_READY_TIMEOUT_MSEC);
 if (!ready) {
  ocs_log_crit(sli4->os, "Failed to become ready after firmware reset\n");
  return -1;
 }
 return 0;
}
