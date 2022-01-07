
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int init; int targ; int fcp2device; int fc_type; } ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_6__ {int type; int service_params; } ;
typedef TYPE_2__ fc_prli_payload_t ;


 int FC_PRLI_INITIATOR_FUNCTION ;
 int FC_PRLI_RETRY ;
 int FC_PRLI_TARGET_FUNCTION ;
 int ocs_be16toh (int ) ;

void
ocs_process_prli_payload(ocs_node_t *node, fc_prli_payload_t *prli)
{
 node->init = (ocs_be16toh(prli->service_params) & FC_PRLI_INITIATOR_FUNCTION) != 0;
 node->targ = (ocs_be16toh(prli->service_params) & FC_PRLI_TARGET_FUNCTION) != 0;
 node->fcp2device = (ocs_be16toh(prli->service_params) & FC_PRLI_RETRY) != 0;
 node->fc_type = prli->type;
}
