
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_8__ {TYPE_2__* app; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_9__ {TYPE_3__* hw; } ;
typedef TYPE_2__ ocs_sli_port_t ;
struct TYPE_10__ {int os; } ;
typedef TYPE_3__ ocs_hw_t ;





 int __ocs_hw_port_free_report_fail ;
 int __ocs_hw_port_freed ;
 int __ocs_hw_port_realloc_cb ;
 int ocs_hw_async_call (TYPE_3__*,int ,TYPE_2__*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_sm_transition (TYPE_1__*,int ,void*) ;
 int smtrace (char*) ;

__attribute__((used)) static void *
__ocs_hw_port_free_nop(ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
 ocs_sli_port_t *sport = ctx->app;
 ocs_hw_t *hw = sport->hw;

 smtrace("port");

 switch (evt) {
 case 130:

  if (ocs_hw_async_call(hw, __ocs_hw_port_realloc_cb, sport)) {
   ocs_log_err(hw->os, "ocs_hw_async_call failed\n");
  }
  break;
 case 128:
  ocs_sm_transition(ctx, __ocs_hw_port_freed, data);
  break;
 case 129:
  ocs_sm_transition(ctx, __ocs_hw_port_free_report_fail, data);
  break;
 default:
  break;
 }

 return ((void*)0);
}
