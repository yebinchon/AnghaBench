
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ocs_sm_function_t ;
struct TYPE_7__ {scalar_t__ current_state; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_8__ {TYPE_1__ sm; } ;
typedef TYPE_2__ ocs_node_t ;


 int OCS_EVT_ENTER ;
 int OCS_EVT_EXIT ;
 int OCS_EVT_REENTER ;
 int ocs_node_lock (TYPE_2__*) ;
 int ocs_node_post_event (TYPE_2__*,int ,void*) ;
 int ocs_node_unlock (TYPE_2__*) ;

void
ocs_node_transition(ocs_node_t *node, ocs_sm_function_t state, void *data)
{
 ocs_sm_ctx_t *ctx = &node->sm;

 ocs_node_lock(node);
  if (ctx->current_state == state) {
   ocs_node_post_event(node, OCS_EVT_REENTER, data);
  } else {
   ocs_node_post_event(node, OCS_EVT_EXIT, data);
   ctx->current_state = state;
   ocs_node_post_event(node, OCS_EVT_ENTER, data);
  }
 ocs_node_unlock(node);
}
