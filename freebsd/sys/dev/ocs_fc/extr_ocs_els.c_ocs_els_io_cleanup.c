
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_4__ {int els_req_free; int els_callback_arg; int node; int (* els_callback ) (int ,void*,int ) ;int els_sm; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_assert (TYPE_1__*) ;
 int ocs_node_post_event (int ,int ,void*) ;
 int ocs_sm_disable (int *) ;
 int stub1 (int ,void*,int ) ;

void
ocs_els_io_cleanup(ocs_io_t *els, ocs_sm_event_t node_evt, void *arg)
{
 ocs_assert(els);




 ocs_sm_disable(&els->els_sm);
 ocs_node_post_event(els->node, node_evt, arg);


 if (els->els_callback) {
  (*els->els_callback)(els->node, arg, els->els_callback_arg);
 }
 els->els_req_free = 1;
}
