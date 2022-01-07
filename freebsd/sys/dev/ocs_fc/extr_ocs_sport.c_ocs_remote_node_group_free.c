
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* ocs; int node_group_lock; int node_group_list_count; int node_group_list; int display_name; struct TYPE_10__* sport; } ;
typedef TYPE_1__ ocs_sport_t ;
struct TYPE_11__ {int instance_index; TYPE_1__* node_group_dir; } ;
typedef TYPE_2__ ocs_remote_node_group_t ;
typedef TYPE_1__ ocs_node_group_dir_t ;


 int ocs_assert (TYPE_1__*) ;
 int ocs_free (TYPE_1__*,TYPE_2__*,int) ;
 int ocs_list_remove (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (TYPE_1__*,char*,int ,int ) ;
 int ocs_unlock (int *) ;

void
ocs_remote_node_group_free(ocs_remote_node_group_t *node_group)
{
 ocs_sport_t *sport;
 ocs_node_group_dir_t *node_group_dir;

 if (node_group != ((void*)0)) {

  ocs_assert(node_group->node_group_dir);
  ocs_assert(node_group->node_group_dir->sport);
  ocs_assert(node_group->node_group_dir->sport->ocs);

  node_group_dir = node_group->node_group_dir;
  sport = node_group_dir->sport;

  ocs_log_debug(sport->ocs, "[%s] [%d] freeing node group\n", sport->display_name, node_group->instance_index);


  ocs_lock(&sport->node_group_lock);
   ocs_list_remove(&node_group_dir->node_group_list, node_group);
   node_group_dir->node_group_list_count --;


  ocs_unlock(&sport->node_group_lock);
  ocs_free(sport->ocs, node_group, sizeof(*node_group));
 }
}
