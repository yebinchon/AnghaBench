
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ocs_sm_function_t ;
struct TYPE_4__ {scalar_t__ current_state; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;


 int OCS_EVT_ENTER ;
 int OCS_EVT_EXIT ;
 int OCS_EVT_REENTER ;
 int ocs_sm_post_event (TYPE_1__*,int ,void*) ;

void
ocs_sm_transition(ocs_sm_ctx_t *ctx, ocs_sm_function_t state, void *data)
{
 if (ctx->current_state == state) {
  ocs_sm_post_event(ctx, OCS_EVT_REENTER, data);
 } else {
  ocs_sm_post_event(ctx, OCS_EVT_EXIT, data);
  ctx->current_state = state;
  ocs_sm_post_event(ctx, OCS_EVT_ENTER, data);
 }
}
