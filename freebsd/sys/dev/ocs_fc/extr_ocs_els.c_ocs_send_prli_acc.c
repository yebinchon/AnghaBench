
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int ocs_t ;
struct TYPE_15__ {TYPE_3__* sport; int * ocs; } ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_13__ {TYPE_6__* virt; } ;
struct TYPE_12__ {void* ox_id; } ;
struct TYPE_17__ {int page_length; void* service_params; void* flags; scalar_t__ type_ext; int type; void* payload_length; int command_code; TYPE_1__ els; } ;
struct TYPE_16__ {char* display_name; int hio_type; TYPE_2__ els_req; TYPE_6__ iparam; void* init_task_tag; void* els_callback_arg; int els_callback; TYPE_4__* node; } ;
typedef TYPE_5__ ocs_io_t ;
typedef int int32_t ;
typedef TYPE_6__ fc_prli_payload_t ;
typedef int els_cb_t ;
struct TYPE_14__ {scalar_t__ enable_tgt; scalar_t__ enable_ini; } ;


 int FC_ELS_CMD_ACC ;
 int FC_PRLI_ESTABLISH_IMAGE_PAIR ;
 int FC_PRLI_INITIATOR_FUNCTION ;
 int FC_PRLI_READ_XRDY_DISABLED ;
 int FC_PRLI_REQUEST_EXECUTED ;
 int FC_PRLI_TARGET_FUNCTION ;
 int OCS_HW_ELS_RSP ;
 int node_els_trace () ;
 int ocs_els_io_free (TYPE_5__*) ;
 int ocs_els_send_rsp (TYPE_5__*,int) ;
 void* ocs_htobe16 (int) ;
 int ocs_memset (TYPE_6__*,int ,int) ;

ocs_io_t *
ocs_send_prli_acc(ocs_io_t *io, uint32_t ox_id, uint8_t fc_type, els_cb_t cb, void *cbarg)
{
 ocs_node_t *node = io->node;
 int32_t rc;
 ocs_t *ocs = node->ocs;
 fc_prli_payload_t *prli;

 node_els_trace();

 io->els_callback = cb;
 io->els_callback_arg = cbarg;
 io->display_name = "prli_acc";
 io->init_task_tag = ox_id;

 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.els.ox_id = ox_id;

 prli = io->els_req.virt;
 ocs_memset(prli, 0, sizeof(*prli));

 prli->command_code = FC_ELS_CMD_ACC;
 prli->page_length = 16;
 prli->payload_length = ocs_htobe16(sizeof(fc_prli_payload_t));
 prli->type = fc_type;
 prli->type_ext = 0;
 prli->flags = ocs_htobe16(FC_PRLI_ESTABLISH_IMAGE_PAIR | FC_PRLI_REQUEST_EXECUTED);

 prli->service_params = ocs_htobe16(FC_PRLI_READ_XRDY_DISABLED |
    (node->sport->enable_ini ? FC_PRLI_INITIATOR_FUNCTION : 0) |
    (node->sport->enable_tgt ? FC_PRLI_TARGET_FUNCTION : 0));

 io->hio_type = OCS_HW_ELS_RSP;
 if ((rc = ocs_els_send_rsp(io, sizeof(*prli)))) {
  ocs_els_io_free(io);
  io = ((void*)0);
 }

 return io;
}
