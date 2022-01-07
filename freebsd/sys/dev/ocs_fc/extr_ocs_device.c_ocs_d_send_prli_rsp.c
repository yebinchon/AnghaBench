
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {scalar_t__ fc_type; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_13__ {scalar_t__ fc_type; void* shutdown_reason; TYPE_1__* sport; } ;
typedef TYPE_3__ ocs_node_t ;
struct TYPE_14__ {TYPE_3__* node; TYPE_2__* ocs; } ;
typedef TYPE_4__ ocs_io_t ;
struct TYPE_11__ {scalar_t__ enable_tgt; } ;


 int FC_EXPL_NO_ADDITIONAL ;
 int FC_EXPL_REQUEST_NOT_SUPPORTED ;
 int FC_REASON_UNABLE_TO_PERFORM ;
 void* OCS_NODE_SHUTDOWN_DEFAULT ;
 int __ocs_d_device_ready ;
 int __ocs_d_initiate_shutdown ;
 int node_printf (TYPE_3__*,char*) ;
 int ocs_node_transition (TYPE_3__*,int ,int *) ;
 scalar_t__ ocs_scsi_validate_initiator (TYPE_3__*) ;
 int ocs_send_ls_rjt (TYPE_4__*,int ,int ,int ,int ,int *,int *) ;
 int ocs_send_prli_acc (TYPE_4__*,int ,scalar_t__,int *,int *) ;

void
ocs_d_send_prli_rsp(ocs_io_t *io, uint16_t ox_id)
{
 ocs_t *ocs = io->ocs;
 ocs_node_t *node = io->node;


 if (ocs->fc_type != node->fc_type) {
  node_printf(node, "PRLI rejected by target-server, fc-type not supported\n");
  ocs_send_ls_rjt(io, ox_id, FC_REASON_UNABLE_TO_PERFORM,
    FC_EXPL_REQUEST_NOT_SUPPORTED, 0, ((void*)0), ((void*)0));
  node->shutdown_reason = OCS_NODE_SHUTDOWN_DEFAULT;
  ocs_node_transition(node, __ocs_d_initiate_shutdown, ((void*)0));
 }


 if (node->sport->enable_tgt && (ocs_scsi_validate_initiator(node) == 0)) {
  node_printf(node, "PRLI rejected by target-server\n");
  ocs_send_ls_rjt(io, ox_id, FC_REASON_UNABLE_TO_PERFORM,
    FC_EXPL_NO_ADDITIONAL, 0, ((void*)0), ((void*)0));
  node->shutdown_reason = OCS_NODE_SHUTDOWN_DEFAULT;
  ocs_node_transition(node, __ocs_d_initiate_shutdown, ((void*)0));
 } else {

  ocs_send_prli_acc(io, ox_id, ocs->fc_type, ((void*)0), ((void*)0));




  ocs_node_transition(node, __ocs_d_device_ready, ((void*)0));
 }
}
