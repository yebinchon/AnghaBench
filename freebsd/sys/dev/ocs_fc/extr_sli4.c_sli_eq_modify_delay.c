
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int virt; } ;
struct TYPE_7__ {int os; TYPE_1__ bmbx; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_queue_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*) ;
 scalar_t__ sli_bmbx_command (TYPE_2__*) ;
 int sli_cmd_common_modify_eq_delay (TYPE_2__*,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ sli_res_sli_config (int ) ;

int32_t
sli_eq_modify_delay(sli4_t *sli4, sli4_queue_t *eq, uint32_t num_eq, uint32_t shift, uint32_t delay_mult)
{

 sli_cmd_common_modify_eq_delay(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE, eq, num_eq, shift, delay_mult);

 if (sli_bmbx_command(sli4)) {
  ocs_log_crit(sli4->os, "bootstrap mailbox write fail (MODIFY EQ DELAY)\n");
  return -1;
 }
 if (sli_res_sli_config(sli4->bmbx.virt)) {
  ocs_log_err(sli4->os, "bad status MODIFY EQ DELAY\n");
  return -1;
 }

 return 0;
}
