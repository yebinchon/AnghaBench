
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int ocs_t ;
struct TYPE_16__ {int display_name; TYPE_3__* sport; scalar_t__ service_params; int * ocs; } ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_14__ {TYPE_6__* virt; } ;
struct TYPE_13__ {void* ox_id; } ;
struct TYPE_19__ {TYPE_1__ els; } ;
struct TYPE_17__ {char* display_name; int hio_type; TYPE_2__ els_req; TYPE_9__ iparam; void* init_task_tag; void* els_callback_arg; int els_callback; TYPE_4__* node; } ;
typedef TYPE_5__ ocs_io_t ;
typedef int int32_t ;
struct TYPE_18__ {int* common_service_parameters; scalar_t__ resv1; int command_code; } ;
typedef TYPE_6__ fc_plogi_payload_t ;
typedef int els_cb_t ;
struct TYPE_15__ {int service_params; } ;


 int FC_ELS_CMD_ACC ;
 int OCS_HW_ELS_RSP ;
 int node_els_trace () ;
 int ocs_display_sparams (int ,char*,int ,int *,int*) ;
 int ocs_els_io_free (TYPE_5__*) ;
 int ocs_els_send_rsp (TYPE_5__*,int) ;
 int ocs_htobe32 (unsigned int) ;
 int ocs_memcpy (TYPE_6__*,int ,int) ;
 int ocs_memset (TYPE_9__*,int ,int) ;

ocs_io_t *
ocs_send_plogi_acc(ocs_io_t *io, uint32_t ox_id, els_cb_t cb, void *cbarg)
{
 ocs_node_t *node = io->node;
 int32_t rc;
 ocs_t *ocs = node->ocs;
 fc_plogi_payload_t *plogi;
 fc_plogi_payload_t *req = (fc_plogi_payload_t *)node->service_params;

 node_els_trace();

 io->els_callback = cb;
 io->els_callback_arg = cbarg;
 io->display_name = "plog_acc";
 io->init_task_tag = ox_id;

 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.els.ox_id = ox_id;

 plogi = io->els_req.virt;


 ocs_memcpy(plogi, node->sport->service_params, sizeof(*plogi));
 plogi->command_code = FC_ELS_CMD_ACC;
 plogi->resv1 = 0;


 if (req->common_service_parameters[1] & ocs_htobe32(1U << 24)) {
  plogi->common_service_parameters[1] |= ocs_htobe32(1U << 24);
 }


 if (req->common_service_parameters[1] & ocs_htobe32(1U << 23)) {
  plogi->common_service_parameters[1] |= ocs_htobe32(1U << 23);
 }

 ocs_display_sparams(node->display_name, "plogi send resp", 0, ((void*)0), plogi->common_service_parameters);

 io->hio_type = OCS_HW_ELS_RSP;
 if ((rc = ocs_els_send_rsp(io, sizeof(*plogi)))) {
  ocs_els_io_free(io);
  io = ((void*)0);
 }
 return io;
}
