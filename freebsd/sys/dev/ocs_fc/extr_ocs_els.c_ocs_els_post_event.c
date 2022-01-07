
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
typedef int ocs_node_t ;
struct TYPE_4__ {scalar_t__ els_evtdepth; scalar_t__ els_req_free; int els_sm; int * node; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_els_io_free (TYPE_1__*) ;
 int ocs_node_lock (int *) ;
 int ocs_node_unlock (int *) ;
 int ocs_sm_post_event (int *,int ,void*) ;

void
ocs_els_post_event(ocs_io_t *els, ocs_sm_event_t evt, void *data)
{

 ocs_node_t *node = els->node;
 ocs_node_lock(node);
  els->els_evtdepth ++;
  ocs_sm_post_event(&els->els_sm, evt, data);
  els->els_evtdepth --;
 ocs_node_unlock(node);
 if (els->els_evtdepth == 0 && els->els_req_free) {
  ocs_els_io_free(els);
 }
}
