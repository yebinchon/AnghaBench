
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int node_group_lock; struct TYPE_16__* sport; int node_group_list_count; int node_group_list; int display_name; int hw; int node_group_next_instance; struct TYPE_16__* ocs; } ;
typedef TYPE_1__ ocs_t ;
typedef TYPE_1__ ocs_sport_t ;
struct TYPE_17__ {scalar_t__ instance_index; int indicator; TYPE_1__* node_group_dir; } ;
typedef TYPE_3__ ocs_remote_node_group_t ;
typedef TYPE_1__ ocs_node_group_dir_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_assert (TYPE_1__*,int *) ;
 int ocs_free (TYPE_1__*,TYPE_3__*,int) ;
 scalar_t__ ocs_hw_node_group_alloc (int *,TYPE_3__*) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (TYPE_1__*,char*,int ,int ,scalar_t__) ;
 int ocs_log_err (TYPE_1__*,char*,scalar_t__) ;
 TYPE_3__* ocs_malloc (TYPE_1__*,int,int) ;
 int ocs_unlock (int *) ;

ocs_remote_node_group_t *
ocs_remote_node_group_alloc(ocs_node_group_dir_t *node_group_dir)
{
 ocs_t *ocs;
 ocs_sport_t *sport;
 ocs_remote_node_group_t *node_group;
 ocs_hw_rtn_e hrc;

 ocs_assert(node_group_dir, ((void*)0));
 ocs_assert(node_group_dir->sport, ((void*)0));
 ocs_assert(node_group_dir->sport->ocs, ((void*)0));

 sport = node_group_dir->sport;
 ocs = sport->ocs;


 node_group = ocs_malloc(ocs, sizeof(*node_group), OCS_M_ZERO | OCS_M_NOWAIT);
 if (node_group != ((void*)0)) {


  node_group->node_group_dir = node_group_dir;

  ocs_lock(&node_group_dir->sport->node_group_lock);
   node_group->instance_index = sport->node_group_next_instance++;
  ocs_unlock(&node_group_dir->sport->node_group_lock);


  hrc = ocs_hw_node_group_alloc(&ocs->hw, node_group);
  if (hrc != OCS_HW_RTN_SUCCESS) {
   ocs_log_err(ocs, "ocs_hw_node_group_alloc() failed: %d\n", hrc);
   ocs_free(ocs, node_group, sizeof(*node_group));
   return ((void*)0);
  }

  ocs_log_debug(ocs, "[%s] [%d] indicator x%03x allocating node group\n", sport->display_name,
   node_group->indicator, node_group->instance_index);


  ocs_lock(&node_group_dir->sport->node_group_lock);
   ocs_list_add_tail(&node_group_dir->node_group_list, node_group);
   node_group_dir->node_group_list_count ++;
  ocs_unlock(&node_group_dir->sport->node_group_lock);
 }
 return node_group;
}
