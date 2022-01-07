
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int service_params; } ;
typedef TYPE_1__ ocs_node_t ;


 int ocs_memcpy (int ,void*,int) ;

void
ocs_node_save_sparms(ocs_node_t *node, void *payload)
{
 ocs_memcpy(node->service_params, payload, sizeof(node->service_params));
}
