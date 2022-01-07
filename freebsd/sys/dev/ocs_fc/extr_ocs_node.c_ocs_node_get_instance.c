
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {size_t nodes_count; TYPE_3__** nodes; } ;
typedef TYPE_1__ ocs_xport_t ;
struct TYPE_8__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_9__ {scalar_t__ attached; } ;
typedef TYPE_3__ ocs_node_t ;


 int ocs_log_test (TYPE_2__*,char*,size_t) ;

ocs_node_t *
ocs_node_get_instance(ocs_t *ocs, uint32_t index)
{
 ocs_xport_t *xport = ocs->xport;
 ocs_node_t *node = ((void*)0);

 if (index >= (xport->nodes_count)) {
  ocs_log_test(ocs, "invalid index: %d\n", index);
  return ((void*)0);
 }
 node = xport->nodes[index];
 return node->attached ? node : ((void*)0);
}
