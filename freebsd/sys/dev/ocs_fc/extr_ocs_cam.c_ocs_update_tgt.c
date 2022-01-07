
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {int fc_id; } ;
struct TYPE_10__ {TYPE_1__ rnode; int instance_index; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_11__ {TYPE_4__* tgt; } ;
typedef TYPE_3__ ocs_fcport ;
struct TYPE_12__ {int wwnn; int wwpn; int port_id; int state; int node_id; } ;
typedef TYPE_4__ ocs_fc_target_t ;


 int OCS_TGT_STATE_VALID ;
 int ocs_node_get_wwnn (TYPE_2__*) ;
 int ocs_node_get_wwpn (TYPE_2__*) ;

uint32_t
ocs_update_tgt(ocs_node_t *node, ocs_fcport *fcp, uint32_t tgt_id)
{
 ocs_fc_target_t *tgt = ((void*)0);

 tgt = &fcp->tgt[tgt_id];

 tgt->node_id = node->instance_index;
 tgt->state = OCS_TGT_STATE_VALID;

 tgt->port_id = node->rnode.fc_id;
 tgt->wwpn = ocs_node_get_wwpn(node);
 tgt->wwnn = ocs_node_get_wwnn(node);
 return 0;
}
