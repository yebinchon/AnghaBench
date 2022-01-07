
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int virt; } ;
struct TYPE_7__ {int os; TYPE_1__ bmbx; } ;
typedef TYPE_2__ sli4_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*) ;
 scalar_t__ sli_bmbx_command (TYPE_2__*) ;
 scalar_t__ sli_cmd_common_function_reset (TYPE_2__*,int ,int ) ;
 scalar_t__ sli_res_sli_config (int ) ;

__attribute__((used)) static int32_t
sli_common_function_reset(sli4_t *sli4)
{

 if (sli_cmd_common_function_reset(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE)) {
  if (sli_bmbx_command(sli4)) {
   ocs_log_crit(sli4->os, "bootstrap mailbox write fail (COM_FUNC_RESET)\n");
   return -1;
  }
  if (sli_res_sli_config(sli4->bmbx.virt)) {
   ocs_log_err(sli4->os, "bad status COM_FUNC_RESET\n");
   return -1;
  }
 } else {
  ocs_log_err(sli4->os, "bad COM_FUNC_RESET write\n");
  return -1;
 }

 return 0;
}
