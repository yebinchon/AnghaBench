
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_10__ {TYPE_4__* app; } ;
typedef TYPE_3__ ocs_sm_ctx_t ;
struct TYPE_11__ {int fc_id; int indicator; TYPE_5__* hw; } ;
typedef TYPE_4__ ocs_sli_port_t ;
struct TYPE_9__ {int port; } ;
struct TYPE_8__ {int (* port ) (int ,int ,TYPE_4__*) ;} ;
struct TYPE_12__ {TYPE_2__ args; TYPE_1__ callback; int os; int sli; } ;
typedef TYPE_5__ ocs_hw_t ;



 int OCS_HW_PORT_FREE_OK ;
 int SLI4_BMBX_SIZE ;
 int SLI_RSRC_FCOE_VPI ;
 int ocs_free (int ,void*,int ) ;
 int ocs_log_err (int ,char*,int ) ;
 int sli_resource_free (int *,int ,int ) ;
 int smtrace (char*) ;
 int stub1 (int ,int ,TYPE_4__*) ;

__attribute__((used)) static void *
__ocs_hw_port_freed(ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
 ocs_sli_port_t *sport = ctx->app;
 ocs_hw_t *hw = sport->hw;

 smtrace("port");

 switch (evt) {
 case 128:

  if (sli_resource_free(&hw->sli, SLI_RSRC_FCOE_VPI, sport->indicator)) {
   ocs_log_err(hw->os, "FCOE_VPI free failure addr=%#x\n", sport->fc_id);
  }


  if (data != ((void*)0)) {
   ocs_free(hw->os, data, SLI4_BMBX_SIZE);
  }
  if (hw->callback.port != ((void*)0)) {
   hw->callback.port(hw->args.port,
     OCS_HW_PORT_FREE_OK, sport);
  }
  break;
 default:
  break;
 }

 return ((void*)0);
}
