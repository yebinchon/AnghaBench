
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_sm_function_t ;
struct TYPE_4__ {int nodedb_state; } ;
typedef TYPE_1__ ocs_node_t ;


 int __ocs_node_paused ;
 int ocs_node_transition (TYPE_1__*,int ,int *) ;

void
ocs_node_pause(ocs_node_t *node, ocs_sm_function_t state)
{
 node->nodedb_state = state;
 ocs_node_transition(node, __ocs_node_paused, ((void*)0));
}
