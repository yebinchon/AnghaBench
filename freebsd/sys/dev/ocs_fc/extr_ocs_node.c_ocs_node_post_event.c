
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_8__ {int evtdepth; scalar_t__ req_free; int hold_frames; int sm; } ;
typedef TYPE_1__ ocs_node_t ;


 int FALSE ;
 int TRUE ;
 int ocs_assert (TYPE_1__*) ;
 int ocs_node_free (TYPE_1__*) ;
 int ocs_node_lock (TYPE_1__*) ;
 int ocs_node_unlock (TYPE_1__*) ;
 int ocs_process_node_pending (TYPE_1__*) ;
 int ocs_sm_post_event (int *,int ,void*) ;

void
ocs_node_post_event(ocs_node_t *node, ocs_sm_event_t evt, void *arg)
{
 int free_node = FALSE;
 ocs_assert(node);

 ocs_node_lock(node);
  node->evtdepth ++;

  ocs_sm_post_event(&node->sm, evt, arg);





  if (!node->hold_frames && (node->evtdepth == 1)) {
   ocs_process_node_pending(node);
  }
  node->evtdepth --;




  if ((node->evtdepth == 0) && node->req_free) {
   free_node = TRUE;
  }
 ocs_node_unlock(node);

 if (free_node) {
  ocs_node_free(node);
 }

 return;
}
