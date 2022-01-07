
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int active_ios_lock; int ocs; int els_io_active_list; int els_io_pend_list; } ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_7__ {int els_active; scalar_t__ els_pend; TYPE_1__* node; } ;
typedef TYPE_2__ ocs_io_t ;


 int ocs_list_add_tail (int *,TYPE_2__*) ;
 int ocs_list_remove (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_log_err (int ,char*) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
ocs_els_make_active(ocs_io_t *els)
{
 ocs_node_t *node = els->node;


 ocs_lock(&node->active_ios_lock);
  if (els->els_pend) {
   if (els->els_active) {
    ocs_log_err(node->ocs, "assertion failed: both els->els_pend and els->active set\n");
    ocs_unlock(&node->active_ios_lock);
    return;
   } else {


    ocs_list_remove(&node->els_io_pend_list, els);
    els->els_pend = 0;


    ocs_list_add_tail(&node->els_io_active_list, els);
    els->els_active = 1;
   }
  } else {

   if (!els->els_active) {
    ocs_log_err(node->ocs, "assertion failed: niether els->els_pend nor els->active set\n");
   }
  }
 ocs_unlock(&node->active_ios_lock);
}
