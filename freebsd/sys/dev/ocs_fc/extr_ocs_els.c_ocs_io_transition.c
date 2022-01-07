
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_sm_function_t ;
typedef int ocs_node_t ;
struct TYPE_3__ {int els_sm; int * node; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_node_lock (int *) ;
 int ocs_node_unlock (int *) ;
 int ocs_sm_transition (int *,int ,void*) ;

__attribute__((used)) static void
ocs_io_transition(ocs_io_t *els, ocs_sm_function_t state, void *data)
{

 ocs_node_t *node = els->node;
 ocs_node_lock(node);
  ocs_sm_transition(&els->els_sm, state, data);
 ocs_node_unlock(node);
}
