
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long long uint64_t ;
struct TYPE_4__ {scalar_t__ service_params; } ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_5__ {int node_name_lo; int node_name_hi; } ;
typedef TYPE_2__ fc_plogi_payload_t ;


 long long ocs_be32toh (int ) ;

uint64_t
ocs_node_get_wwnn(ocs_node_t *node)
{
 fc_plogi_payload_t *sp = (fc_plogi_payload_t*) node->service_params;

 return (((uint64_t)ocs_be32toh(sp->node_name_hi) << 32ll) | (ocs_be32toh(sp->node_name_lo)));
}
