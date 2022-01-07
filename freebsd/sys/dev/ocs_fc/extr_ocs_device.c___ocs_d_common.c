
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int shutdown_reason; int display_name; struct TYPE_9__* ocs; struct TYPE_9__* app; } ;
typedef TYPE_1__ ocs_t ;
typedef int ocs_sm_event_t ;
typedef TYPE_1__ ocs_sm_ctx_t ;
typedef TYPE_1__ ocs_node_t ;





 int OCS_NODE_SHUTDOWN_DEFAULT ;
 int OCS_NODE_SHUTDOWN_EXPLICIT_LOGO ;
 int OCS_NODE_SHUTDOWN_IMPLICIT_LOGO ;
 int __ocs_d_initiate_shutdown ;
 int __ocs_node_common (char const*,TYPE_1__*,int,void*) ;
 int ocs_assert (TYPE_1__*,int *) ;
 int ocs_log_debug (TYPE_1__*,char*,int ,char const*,int ) ;
 int ocs_node_transition (TYPE_1__*,int ,int *) ;
 int ocs_sm_event_name (int) ;

__attribute__((used)) static void *
__ocs_d_common(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
 ocs_node_t *node = ((void*)0);
 ocs_t *ocs = ((void*)0);
 ocs_assert(ctx, ((void*)0));
 node = ctx->app;
 ocs_assert(node, ((void*)0));
 ocs = node->ocs;
 ocs_assert(ocs, ((void*)0));

 switch(evt) {


 case 130:
  ocs_log_debug(ocs, "[%s] %-20s %-20s\n", node->display_name, funcname, ocs_sm_event_name(evt));
  node->shutdown_reason = OCS_NODE_SHUTDOWN_DEFAULT;
  ocs_node_transition(node, __ocs_d_initiate_shutdown, ((void*)0));
  break;
 case 129:
  ocs_log_debug(ocs, "[%s] %-20s %-20s\n", node->display_name, funcname, ocs_sm_event_name(evt));
  node->shutdown_reason = OCS_NODE_SHUTDOWN_EXPLICIT_LOGO;
  ocs_node_transition(node, __ocs_d_initiate_shutdown, ((void*)0));
  break;
 case 128:
  ocs_log_debug(ocs, "[%s] %-20s %-20s\n", node->display_name, funcname, ocs_sm_event_name(evt));
  node->shutdown_reason = OCS_NODE_SHUTDOWN_IMPLICIT_LOGO;
  ocs_node_transition(node, __ocs_d_initiate_shutdown, ((void*)0));
  break;

 default:

  __ocs_node_common(funcname, ctx, evt, arg);
  break;
 }
 return ((void*)0);
}
