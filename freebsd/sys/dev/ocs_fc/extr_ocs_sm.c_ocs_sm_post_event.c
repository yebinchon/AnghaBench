
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_4__ {int (* current_state ) (TYPE_1__*,int ,void*) ;} ;
typedef TYPE_1__ ocs_sm_ctx_t ;


 int stub1 (TYPE_1__*,int ,void*) ;

int
ocs_sm_post_event(ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
 if (ctx->current_state) {
  ctx->current_state(ctx, evt, data);
  return 0;
 } else {
  return -1;
 }
}
