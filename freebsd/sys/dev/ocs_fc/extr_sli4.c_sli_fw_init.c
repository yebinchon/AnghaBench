
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int virt; } ;
struct TYPE_11__ {int if_type; int os; TYPE_1__ bmbx; } ;
typedef TYPE_2__ sli4_t ;
typedef int int32_t ;


 int SLI4_BMBX_DELAY_US ;
 int SLI4_BMBX_SIZE ;
 int SLI4_FW_READY_TIMEOUT_MSEC ;



 int SLI4_SLIPORT_CONTROL_BIG_ENDIAN ;
 int SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*,int) ;
 int sli_bmbx_command (TYPE_2__*) ;
 int sli_bmbx_wait (TYPE_2__*,int ) ;
 int sli_cmd_fw_initialize (TYPE_2__*,int ,int ) ;
 int sli_common_function_reset (TYPE_2__*) ;
 int sli_sliport_control (TYPE_2__*,int ) ;
 int sli_wait_for_fw_ready (TYPE_2__*,int ) ;

__attribute__((used)) static int32_t
sli_fw_init(sli4_t *sli4)
{
 uint32_t ready;
 uint32_t endian;




 ready = sli_wait_for_fw_ready(sli4, SLI4_FW_READY_TIMEOUT_MSEC);
 if (!ready) {
  ocs_log_crit(sli4->os, "FW status is NOT ready\n");
  return -1;
 }




 switch (sli4->if_type) {
 case 130:
 case 129:

  if (sli_bmbx_wait(sli4, SLI4_BMBX_DELAY_US)) {
   ocs_log_crit(sli4->os, "bootstrap mailbox not ready\n");
   return -1;
  }

  if (sli_cmd_fw_initialize(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE)) {
   if (sli_bmbx_command(sli4)) {
    ocs_log_crit(sli4->os, "bootstrap mailbox write fail (FW_INIT)\n");
    return -1;
   }
  } else {
   ocs_log_crit(sli4->os, "bad FW_INIT write\n");
   return -1;
  }

  if (sli_common_function_reset(sli4)) {
   ocs_log_err(sli4->os, "bad COM_FUNC_RESET write\n");
   return -1;
  }
  break;
 case 128:

  endian = SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN;




  if (sli_sliport_control(sli4, endian))
   return -1;
  break;
 default:
  ocs_log_test(sli4->os, "if_type %d not supported\n", sli4->if_type);
  return -1;
 }

 return 0;
}
