
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active_ios_lock; } ;
typedef TYPE_1__ ocs_node_t ;
typedef int ocs_list_t ;
typedef int int32_t ;


 int ocs_list_empty (int *) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

int32_t
ocs_els_io_list_empty(ocs_node_t *node, ocs_list_t *list)
{
 int empty;
 ocs_lock(&node->active_ios_lock);
  empty = ocs_list_empty(list);
 ocs_unlock(&node->active_ios_lock);
 return empty;
}
