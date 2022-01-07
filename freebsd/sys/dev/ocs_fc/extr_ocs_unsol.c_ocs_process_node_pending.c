
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_13__ {scalar_t__ pend_frames_processed; int pend_frames_lock; int pend_frames; TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_14__ {int * hio; } ;
typedef TYPE_3__ ocs_hw_sequence_t ;
typedef int int32_t ;


 int ocs_hw_sequence_free (int *,TYPE_3__*) ;
 TYPE_3__* ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (TYPE_1__*,char*,scalar_t__) ;
 scalar_t__ ocs_node_dispatch_frame (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ ocs_node_frames_held (TYPE_2__*) ;
 int ocs_port_owned_abort (TYPE_1__*,int *) ;
 int ocs_unlock (int *) ;

int32_t
ocs_process_node_pending(ocs_node_t *node)
{
 ocs_t *ocs = node->ocs;
 ocs_hw_sequence_t *seq = ((void*)0);
 uint32_t pend_frames_processed = 0;

 for (;;) {




  if (ocs_node_frames_held(node)) {
   break;
  }


  ocs_lock(&node->pend_frames_lock);
   seq = ocs_list_remove_head(&node->pend_frames);
   if (seq == ((void*)0)) {
    pend_frames_processed = node->pend_frames_processed;
    node->pend_frames_processed = 0;
    ocs_unlock(&node->pend_frames_lock);
    break;
   }
   node->pend_frames_processed++;
  ocs_unlock(&node->pend_frames_lock);


  if (ocs_node_dispatch_frame(node, seq)) {
   if (seq->hio != ((void*)0)) {
    ocs_port_owned_abort(ocs, seq->hio);
   }
   ocs_hw_sequence_free(&ocs->hw, seq);
  }
 }

 if (pend_frames_processed != 0) {
  ocs_log_debug(ocs, "%u node frames held and processed\n", pend_frames_processed);
 }

 return 0;
}
