
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ocs; int node_group_lock; int node_group_dir_list; int display_name; } ;
typedef TYPE_1__ ocs_sport_t ;
struct TYPE_7__ {int node_group_list; int instance_index; TYPE_1__* sport; } ;
typedef TYPE_2__ ocs_node_group_dir_t ;


 int ocs_free (int ,TYPE_2__*,int) ;
 int ocs_list_empty (int *) ;
 int ocs_list_remove (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (int ,char*,int ,int ) ;
 int ocs_log_test (int ,char*,int ) ;
 int ocs_unlock (int *) ;

void
ocs_node_group_dir_free(ocs_node_group_dir_t *node_group_dir)
{
 ocs_sport_t *sport;
 if (node_group_dir != ((void*)0)) {
  sport = node_group_dir->sport;
  ocs_log_debug(sport->ocs, "[%s] [%d] freeing node group directory\n", sport->display_name,
   node_group_dir->instance_index);
  ocs_lock(&sport->node_group_lock);
   if (!ocs_list_empty(&node_group_dir->node_group_list)) {
    ocs_log_test(sport->ocs, "[%s] WARNING: node group list not empty\n", sport->display_name);
   }
   ocs_list_remove(&sport->node_group_dir_list, node_group_dir);
  ocs_unlock(&sport->node_group_lock);
  ocs_free(sport->ocs, node_group_dir, sizeof(*node_group_dir));
 }
}
