
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {struct TYPE_22__* mbox_cmd; void* arg; int cb; } ;
typedef TYPE_2__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_21__ {int virt; } ;
struct TYPE_24__ {TYPE_1__ bmbx; } ;
struct TYPE_23__ {scalar_t__ state; int os; TYPE_5__ sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int ocs_hw_dump_clear_cb_t ;
typedef TYPE_2__ ocs_hw_dump_clear_cb_arg_t ;


 scalar_t__ OCS_CMD_NOWAIT ;
 scalar_t__ OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_HW_STATE_ACTIVE ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int ocs_free (int ,TYPE_2__*,int) ;
 scalar_t__ ocs_hw_cb_dump_clear (TYPE_3__*,int ,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ ocs_hw_command (TYPE_3__*,TYPE_2__*,scalar_t__,scalar_t__ (*) (TYPE_3__*,int ,TYPE_2__*,TYPE_2__*),TYPE_2__*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 TYPE_2__* ocs_malloc (int ,int,int) ;
 int ocs_memcpy (TYPE_2__*,int ,int) ;
 scalar_t__ sli_cmd_common_delete_object (TYPE_5__*,TYPE_2__*,int,char*) ;
 scalar_t__ sli_get_if_type (TYPE_5__*) ;

ocs_hw_rtn_e
ocs_hw_dump_clear(ocs_hw_t *hw, ocs_hw_dump_clear_cb_t cb, void *arg)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
 uint8_t *mbxdata;
 ocs_hw_dump_clear_cb_arg_t *cb_arg;
 uint32_t opts = (hw->state == OCS_HW_STATE_ACTIVE ? OCS_CMD_NOWAIT : OCS_CMD_POLL);

 if (SLI4_IF_TYPE_LANCER_FC_ETH != sli_get_if_type(&hw->sli)) {
  ocs_log_test(hw->os, "Function only supported for I/F type 2\n");
  return OCS_HW_RTN_ERROR;
 }

 mbxdata = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (mbxdata == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc mbox\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg = ocs_malloc(hw->os, sizeof(ocs_hw_dump_clear_cb_arg_t), OCS_M_NOWAIT);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg->cb = cb;
 cb_arg->arg = arg;
 cb_arg->mbox_cmd = mbxdata;

 if (sli_cmd_common_delete_object(&hw->sli, mbxdata, SLI4_BMBX_SIZE,
   "/dbg/dump.bin")) {
  rc = ocs_hw_command(hw, mbxdata, opts, ocs_hw_cb_dump_clear, cb_arg);
  if (rc == 0 && opts == OCS_CMD_POLL) {
   ocs_memcpy(mbxdata, hw->sli.bmbx.virt, SLI4_BMBX_SIZE);
   rc = ocs_hw_cb_dump_clear(hw, 0, mbxdata, cb_arg);
  }
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_test(hw->os, "COMMON_DELETE_OBJECT failed\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_dump_clear_cb_arg_t));
 }

 return rc;
}
