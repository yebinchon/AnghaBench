
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {void* arg; int cb; } ;
typedef TYPE_1__ uint8_t ;
struct TYPE_14__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int ocs_hw_host_stat_cb_t ;
typedef TYPE_1__ ocs_hw_host_stat_cb_arg_t ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_1__*,int) ;
 int ocs_hw_cb_host_stat ;
 scalar_t__ ocs_hw_command (TYPE_2__*,TYPE_1__*,int ,int ,TYPE_1__*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 TYPE_1__* ocs_malloc (int ,int,int ) ;
 scalar_t__ sli_cmd_read_status (int *,TYPE_1__*,int,TYPE_1__) ;

ocs_hw_rtn_e
ocs_hw_get_host_stats(ocs_hw_t *hw, uint8_t cc, ocs_hw_host_stat_cb_t cb, void *arg)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
 ocs_hw_host_stat_cb_arg_t *cb_arg;
 uint8_t *mbxdata;

 mbxdata = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO);
 if (mbxdata == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc mbox");
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg = ocs_malloc(hw->os, sizeof(ocs_hw_host_stat_cb_arg_t), 0);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
  }

  cb_arg->cb = cb;
  cb_arg->arg = arg;


 if (sli_cmd_read_status(&hw->sli, mbxdata, SLI4_BMBX_SIZE, cc)) {
   rc = ocs_hw_command(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_cb_host_stat, cb_arg);
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_test(hw->os, "READ_HOST_STATS failed\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_host_stat_cb_arg_t));
 }

 return rc;
}
