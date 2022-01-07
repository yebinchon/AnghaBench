
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
struct TYPE_16__ {TYPE_3__* sport; int * ocs; } ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_14__ {TYPE_6__* virt; } ;
struct TYPE_13__ {void* s_id; void* ox_id; } ;
struct TYPE_19__ {TYPE_1__ els_sid; } ;
struct TYPE_17__ {char* display_name; int hio_type; TYPE_2__ els_req; TYPE_9__ iparam; void* init_task_tag; void* els_callback_arg; int els_callback; TYPE_4__* node; } ;
typedef TYPE_5__ ocs_io_t ;
typedef int int32_t ;
struct TYPE_18__ {TYPE_9__* class4_service_parameters; TYPE_9__* class3_service_parameters; TYPE_9__* class2_service_parameters; TYPE_9__* class1_service_parameters; scalar_t__ resv1; int command_code; } ;
typedef TYPE_6__ fc_plogi_payload_t ;
typedef int els_cb_t ;
struct TYPE_15__ {int service_params; } ;


 int FC_ELS_CMD_ACC ;
 int OCS_HW_ELS_RSP_SID ;
 int node_els_trace () ;
 int ocs_els_io_free (TYPE_5__*) ;
 int ocs_els_send_rsp (TYPE_5__*,int) ;
 int ocs_memcpy (TYPE_6__*,int ,int) ;
 int ocs_memset (TYPE_9__*,int ,int) ;

ocs_io_t *
ocs_send_flogi_p2p_acc(ocs_io_t *io, uint32_t ox_id, uint32_t s_id, els_cb_t cb, void *cbarg)
{
 ocs_node_t *node = io->node;
 int32_t rc;
 ocs_t *ocs = node->ocs;
 fc_plogi_payload_t *flogi;

 node_els_trace();

 io->els_callback = cb;
 io->els_callback_arg = cbarg;
 io->display_name = "flogi_p2p_acc";
 io->init_task_tag = ox_id;

 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.els_sid.ox_id = ox_id;
 io->iparam.els_sid.s_id = s_id;

 flogi = io->els_req.virt;


 ocs_memcpy(flogi, node->sport->service_params, sizeof(*flogi));
 flogi->command_code = FC_ELS_CMD_ACC;
 flogi->resv1 = 0;
 ocs_memset(flogi->class1_service_parameters, 0, sizeof(flogi->class1_service_parameters));
 ocs_memset(flogi->class2_service_parameters, 0, sizeof(flogi->class1_service_parameters));
 ocs_memset(flogi->class3_service_parameters, 0, sizeof(flogi->class1_service_parameters));
 ocs_memset(flogi->class4_service_parameters, 0, sizeof(flogi->class1_service_parameters));

 io->hio_type = OCS_HW_ELS_RSP_SID;
 if ((rc = ocs_els_send_rsp(io, sizeof(*flogi)))) {
  ocs_els_io_free(io);
  io = ((void*)0);
 }

 return io;
}
