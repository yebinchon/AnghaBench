
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_7__ {int shutdown_reason; struct TYPE_7__* app; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;
typedef TYPE_1__ ocs_node_t ;




 int OCS_NODE_SHUTDOWN_DEFAULT ;
 int __ocs_node_common (char const*,TYPE_1__*,int,void*) ;
 int ocs_assert (TYPE_1__*,int *) ;
 int ocs_fabric_initiate_shutdown (TYPE_1__*) ;

__attribute__((used)) static void *
__ocs_fabric_common(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
 ocs_node_t *node = ((void*)0);
 ocs_assert(ctx, ((void*)0));
 ocs_assert(ctx->app, ((void*)0));
 node = ctx->app;

 switch(evt) {
 case 129:
  break;
 case 128:
  node->shutdown_reason = OCS_NODE_SHUTDOWN_DEFAULT;
  ocs_fabric_initiate_shutdown(node);
  break;

 default:

  __ocs_node_common(funcname, ctx, evt, arg);
  break;
 }
 return ((void*)0);
}
