
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fc_id; } ;
struct TYPE_8__ {int send_plogi; int nodedb_state; TYPE_2__ rnode; TYPE_1__* ocs; } ;
typedef TYPE_3__ ocs_node_t ;
struct TYPE_6__ {int nodedb_mask; } ;


 int FC_ADDR_IS_DOMAIN_CTRL (int ) ;
 int OCS_NODEDB_PAUSE_NEW_NODES ;
 int __ocs_d_init ;
 int __ocs_node_paused ;
 int ocs_node_transition (TYPE_3__*,int ,int *) ;

void
ocs_node_init_device(ocs_node_t *node, int send_plogi)
{
 node->send_plogi = send_plogi;
 if ((node->ocs->nodedb_mask & OCS_NODEDB_PAUSE_NEW_NODES) && !FC_ADDR_IS_DOMAIN_CTRL(node->rnode.fc_id)) {
  node->nodedb_state = __ocs_d_init;
  ocs_node_transition(node, __ocs_node_paused, ((void*)0));
 } else {
  ocs_node_transition(node, __ocs_d_init, ((void*)0));
 }
}
