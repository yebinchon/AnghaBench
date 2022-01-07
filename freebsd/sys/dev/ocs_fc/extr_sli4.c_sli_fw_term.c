
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int virt; } ;
struct TYPE_10__ {scalar_t__ if_type; int os; TYPE_1__ bmbx; } ;
typedef TYPE_2__ sli4_t ;
typedef int int32_t ;


 int SLI4_BMBX_DELAY_US ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ;
 int SLI4_SLIPORT_CONTROL_BIG_ENDIAN ;
 int SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 scalar_t__ sli_bmbx_command (TYPE_2__*) ;
 scalar_t__ sli_bmbx_wait (TYPE_2__*,int ) ;
 scalar_t__ sli_cmd_fw_deinitialize (TYPE_2__*,int ,int ) ;
 scalar_t__ sli_common_function_reset (TYPE_2__*) ;
 int sli_sliport_control (TYPE_2__*,int ) ;

__attribute__((used)) static int32_t
sli_fw_term(sli4_t *sli4)
{
 uint32_t endian;

 if (sli4->if_type == SLI4_IF_TYPE_BE3_SKH_PF ||
     sli4->if_type == SLI4_IF_TYPE_BE3_SKH_VF) {

  if (sli_bmbx_wait(sli4, SLI4_BMBX_DELAY_US)) {
   ocs_log_crit(sli4->os, "bootstrap mailbox not ready\n");
   return -1;
  }

  if (sli_common_function_reset(sli4)) {
   ocs_log_err(sli4->os, "bad COM_FUNC_RESET write\n");
   return -1;
  }

  if (sli_cmd_fw_deinitialize(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE)) {
   if (sli_bmbx_command(sli4)) {
    ocs_log_crit(sli4->os, "bootstrap mailbox write fail (FW_DEINIT)\n");
    return -1;
   }
  } else {
   ocs_log_test(sli4->os, "bad FW_DEINIT write\n");
   return -1;
  }
 } else {

  endian = SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN;




  sli_sliport_control(sli4, endian);
 }
 return 0;
}
