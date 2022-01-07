
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int ocs_hw_port_control_cb_t ;
typedef int ocs_hw_linkcfg_e ;
struct TYPE_14__ {scalar_t__ virt; } ;
struct TYPE_13__ {TYPE_6__ dma_resp; TYPE_6__ dma_cmd; int opts; void* arg; int cb; } ;
typedef TYPE_2__ ocs_hw_linkcfg_cb_arg_t ;


 int OCS_CMD_POLL ;
 int OCS_HW_DMTF_CLP_CMD_MAX ;
 scalar_t__ OCS_HW_DMTF_CLP_RSP_MAX ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 scalar_t__ ocs_dma_alloc (int ,TYPE_6__*,scalar_t__,int) ;
 int ocs_dma_free (int ,TYPE_6__*) ;
 int ocs_free (int ,TYPE_2__*,int) ;
 char* ocs_hw_clp_from_linkcfg (int ) ;
 scalar_t__ ocs_hw_exec_dmtf_clp_cmd (TYPE_1__*,TYPE_6__*,TYPE_6__*,int ,int ,TYPE_2__*) ;
 int ocs_hw_linkcfg_dmtf_clp_cb ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*,char*) ;
 TYPE_2__* ocs_malloc (int ,int,int ) ;
 int ocs_memcpy (scalar_t__,char*,scalar_t__) ;
 int ocs_memset (scalar_t__,int ,scalar_t__) ;
 int ocs_snprintf (char*,int,char*,char const*) ;
 scalar_t__ ocs_strlen (char*) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_set_linkcfg_lancer(ocs_hw_t *hw, ocs_hw_linkcfg_e value, uint32_t opts, ocs_hw_port_control_cb_t cb, void *arg)
{
 char cmd[OCS_HW_DMTF_CLP_CMD_MAX];
 ocs_hw_linkcfg_cb_arg_t *cb_arg;
 const char *value_str = ((void*)0);
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;


 value_str = ocs_hw_clp_from_linkcfg(value);


 cb_arg = ocs_malloc(hw->os, sizeof(*cb_arg), OCS_M_NOWAIT);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg");
  return OCS_HW_RTN_NO_MEMORY;
 }

 ocs_snprintf(cmd, OCS_HW_DMTF_CLP_CMD_MAX, "set / OEMELX_LinkConfig=%s", value_str);

 if (ocs_dma_alloc(hw->os, &cb_arg->dma_cmd, ocs_strlen(cmd)+1, 4096)) {
  ocs_log_err(hw->os, "malloc failed\n");
  ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
  return OCS_HW_RTN_NO_MEMORY;
 }
 ocs_memset(cb_arg->dma_cmd.virt, 0, ocs_strlen(cmd)+1);
 ocs_memcpy(cb_arg->dma_cmd.virt, cmd, ocs_strlen(cmd));


 if (ocs_dma_alloc(hw->os, &cb_arg->dma_resp, OCS_HW_DMTF_CLP_RSP_MAX, 4096)) {
  ocs_log_err(hw->os, "malloc failed\n");
  ocs_dma_free(hw->os, &cb_arg->dma_cmd);
  ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
  return OCS_HW_RTN_NO_MEMORY;
 }
 cb_arg->cb = cb;
 cb_arg->arg = arg;
 cb_arg->opts = opts;

 rc = ocs_hw_exec_dmtf_clp_cmd(hw, &cb_arg->dma_cmd, &cb_arg->dma_resp,
     opts, ocs_hw_linkcfg_dmtf_clp_cb, cb_arg);

 if (opts == OCS_CMD_POLL || rc != OCS_HW_RTN_SUCCESS) {



  if (rc) {
   ocs_log_test(hw->os, "CLP cmd=\"%s\" failed\n",
     (char *)cb_arg->dma_cmd.virt);
  }
  ocs_dma_free(hw->os, &cb_arg->dma_cmd);
  ocs_dma_free(hw->os, &cb_arg->dma_resp);
  ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
 }
 return rc;
}
