
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int active_ios_lock; scalar_t__ els_pend; int els_io_pend_list; scalar_t__ els_active; int els_io_active_list; int io_alloc_enabled; struct TYPE_11__* ocs; struct TYPE_11__* node; } ;
typedef TYPE_1__ ocs_t ;
typedef TYPE_1__ ocs_node_t ;
typedef TYPE_1__ ocs_io_t ;


 int FALSE ;
 int OCS_EVT_ALL_CHILD_NODES_FREE ;
 int ocs_assert (TYPE_1__*) ;
 int ocs_io_free (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ ocs_list_empty (int *) ;
 int ocs_list_remove (int *,TYPE_1__*) ;
 int ocs_lock (int *) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_node_post_event (TYPE_1__*,int ,int *) ;
 int ocs_scsi_check_pending (TYPE_1__*) ;
 int ocs_unlock (int *) ;

__attribute__((used)) static void
_ocs_els_io_free(void *arg)
{
 ocs_io_t *els = (ocs_io_t *)arg;
 ocs_t *ocs;
 ocs_node_t *node;
 int send_empty_event = FALSE;

 ocs_assert(els);
 ocs_assert(els->node);
 ocs_assert(els->node->ocs);
 ocs = els->node->ocs;

 node = els->node;
 ocs = node->ocs;

 ocs_lock(&node->active_ios_lock);
  if (els->els_active) {

   ocs_list_remove(&node->els_io_active_list, els);



   send_empty_event = (!node->io_alloc_enabled) && ocs_list_empty(&node->els_io_active_list);
   els->els_active = 0;
  } else if (els->els_pend) {




   ocs_list_remove(&node->els_io_pend_list, els);
   els->els_pend = 0;
  } else {
   ocs_log_err(ocs, "assertion failed: niether els->els_pend nor els->active set\n");
   ocs_unlock(&node->active_ios_lock);
   return;
  }

 ocs_unlock(&node->active_ios_lock);

 ocs_io_free(ocs, els);

 if (send_empty_event) {
  ocs_node_post_event(node, OCS_EVT_ALL_CHILD_NODES_FREE, ((void*)0));
 }

 ocs_scsi_check_pending(ocs);
}
