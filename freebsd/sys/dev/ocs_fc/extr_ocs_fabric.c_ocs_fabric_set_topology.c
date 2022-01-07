
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_sport_topology_e ;
struct TYPE_5__ {TYPE_1__* sport; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_4__ {int topology; } ;



void
ocs_fabric_set_topology(ocs_node_t *node, ocs_sport_topology_e topology)
{
 node->sport->topology = topology;
}
