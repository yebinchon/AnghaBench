
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_12__ {scalar_t__ virt; } ;
struct TYPE_13__ {scalar_t__ hio_type; scalar_t__ command_code; int display_name; struct TYPE_13__* ocs; struct TYPE_13__* els; TYPE_1__ els_req; struct TYPE_13__* app; } ;
typedef TYPE_2__ ocs_t ;
typedef int ocs_sm_event_t ;
typedef TYPE_2__ ocs_sm_ctx_t ;
typedef TYPE_2__ ocs_node_t ;
typedef int (* ocs_node_common_func_t ) (char const*,TYPE_2__*,int ,void*) ;
typedef TYPE_2__ ocs_node_cb_t ;
typedef int int32_t ;
typedef TYPE_2__ fc_els_gen_t ;


 scalar_t__ OCS_HW_ELS_REQ ;
 int ocs_assert (TYPE_2__*,int) ;
 int ocs_log_debug (TYPE_2__*,char*,int ,char const*,scalar_t__,scalar_t__) ;

int32_t
node_check_els_req(ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg, uint8_t cmd, ocs_node_common_func_t node_common_func, const char *funcname)
{
 ocs_node_t *node = ((void*)0);
 ocs_t *ocs = ((void*)0);
 ocs_node_cb_t *cbdata = arg;
 fc_els_gen_t *els_gen = ((void*)0);
 ocs_assert(ctx, -1);
 node = ctx->app;
 ocs_assert(node, -1);
 ocs = node->ocs;
 ocs_assert(ocs, -1);
 cbdata = arg;
 ocs_assert(cbdata, -1);
 ocs_assert(cbdata->els, -1);
 els_gen = (fc_els_gen_t *)cbdata->els->els_req.virt;
 ocs_assert(els_gen, -1);

 if ((cbdata->els->hio_type != OCS_HW_ELS_REQ) || (els_gen->command_code != cmd)) {
  if (cbdata->els->hio_type != OCS_HW_ELS_REQ) {
   ocs_log_debug(node->ocs, "[%s] %-20s expecting ELS cmd=x%x received type=%d\n",
    node->display_name, funcname, cmd, cbdata->els->hio_type);
  } else {
   ocs_log_debug(node->ocs, "[%s] %-20s expecting ELS cmd=x%x received cmd=x%x\n",
    node->display_name, funcname, cmd, els_gen->command_code);
  }

  node_common_func(funcname, ctx, evt, arg);
  return -1;
 }
 return 0;
}
