
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ status; int opts; int * dma_resp; void* arg; int cb; } ;
typedef TYPE_2__ uint8_t ;
typedef int uint32_t ;
struct TYPE_20__ {int virt; } ;
struct TYPE_23__ {TYPE_1__ bmbx; } ;
struct TYPE_22__ {int os; TYPE_5__ sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int ocs_hw_dmtf_clp_cb_t ;
typedef TYPE_2__ ocs_hw_clp_cb_arg_t ;
typedef int ocs_dma_t ;


 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_2__*,int) ;
 scalar_t__ ocs_hw_command (TYPE_3__*,TYPE_2__*,int ,int (*) (TYPE_3__*,int ,TYPE_2__*,TYPE_2__*),TYPE_2__*) ;
 int ocs_hw_dmtf_clp_cb (TYPE_3__*,int ,TYPE_2__*,TYPE_2__*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 TYPE_2__* ocs_malloc (int ,int,int) ;
 int ocs_memcpy (TYPE_2__*,int ,int) ;
 scalar_t__ sli_cmd_dmtf_exec_clp_cmd (TYPE_5__*,TYPE_2__*,int,int *,int *) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_exec_dmtf_clp_cmd(ocs_hw_t *hw, ocs_dma_t *dma_cmd, ocs_dma_t *dma_resp, uint32_t opts, ocs_hw_dmtf_clp_cb_t cb, void *arg)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
 ocs_hw_clp_cb_arg_t *cb_arg;
 uint8_t *mbxdata;


 mbxdata = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (mbxdata == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc mbox\n");
  return OCS_HW_RTN_NO_MEMORY;
 }


 cb_arg = ocs_malloc(hw->os, sizeof(*cb_arg), OCS_M_NOWAIT);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg->cb = cb;
 cb_arg->arg = arg;
 cb_arg->dma_resp = dma_resp;
 cb_arg->opts = opts;


 if (sli_cmd_dmtf_exec_clp_cmd(&hw->sli, mbxdata, SLI4_BMBX_SIZE,
          dma_cmd, dma_resp)) {
  rc = ocs_hw_command(hw, mbxdata, opts, ocs_hw_dmtf_clp_cb, cb_arg);

  if (opts == OCS_CMD_POLL && rc == OCS_HW_RTN_SUCCESS) {


   ocs_memcpy(mbxdata, hw->sli.bmbx.virt, SLI4_BMBX_SIZE);
   ocs_hw_dmtf_clp_cb(hw, 0, mbxdata, cb_arg);


   rc = cb_arg->status;
  }


  if (opts == OCS_CMD_POLL || rc != OCS_HW_RTN_SUCCESS) {
   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_test(hw->os, "ocs_hw_command failed\n");
   }
   ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
   ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
  }
 } else {
  ocs_log_test(hw->os, "sli_cmd_dmtf_exec_clp_cmd failed\n");
  rc = OCS_HW_RTN_ERROR;
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
 }

 return rc;
}
