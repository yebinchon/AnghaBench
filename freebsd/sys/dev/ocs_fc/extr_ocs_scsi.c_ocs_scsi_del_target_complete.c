
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_node_t ;


 int OCS_EVT_NODE_DEL_TGT_COMPLETE ;
 int ocs_node_post_event (int *,int ,int *) ;

void
ocs_scsi_del_target_complete(ocs_node_t *node)
{

 ocs_node_post_event(node, OCS_EVT_NODE_DEL_TGT_COMPLETE, ((void*)0));
}
