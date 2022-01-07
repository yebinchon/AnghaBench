
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_10__ {scalar_t__ free_group; } ;
struct TYPE_9__ {TYPE_5__ rnode; int * node_group; scalar_t__ attached; TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_node_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 scalar_t__ FALSE ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_HW_RTN_SUCCESS_SYNC ;
 int node_printf (TYPE_2__*,char*,scalar_t__) ;
 scalar_t__ ocs_hw_node_detach (int *,TYPE_5__*) ;
 int ocs_node_initiate_cleanup (TYPE_2__*) ;
 int ocs_remote_node_group_free (int *) ;
 int ocs_scsi_io_alloc_disable (TYPE_2__*) ;

__attribute__((used)) static void
ocs_fabric_initiate_shutdown(ocs_node_t *node)
{
 ocs_hw_rtn_e rc;
 ocs_t *ocs = node->ocs;
 ocs_scsi_io_alloc_disable(node);

 if (node->attached) {




  rc = ocs_hw_node_detach(&ocs->hw, &node->rnode);
  if (node->rnode.free_group) {
   ocs_remote_node_group_free(node->node_group);
   node->node_group = ((void*)0);
   node->rnode.free_group = FALSE;
  }
  if (rc != OCS_HW_RTN_SUCCESS && rc != OCS_HW_RTN_SUCCESS_SYNC) {
   node_printf(node, "Failed freeing HW node, rc=%d\n", rc);
  }
 }




 ocs_node_initiate_cleanup(node);
}
