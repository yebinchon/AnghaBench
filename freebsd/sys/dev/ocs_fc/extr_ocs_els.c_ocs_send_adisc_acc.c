
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef void* uint32_t ;
struct TYPE_22__ {TYPE_4__* sport; } ;
struct TYPE_23__ {TYPE_5__ rnode; TYPE_2__* sport; struct TYPE_23__* ocs; } ;
typedef TYPE_6__ ocs_t ;
typedef TYPE_6__ ocs_node_t ;
struct TYPE_20__ {TYPE_10__* virt; } ;
struct TYPE_18__ {void* ox_id; } ;
struct TYPE_17__ {int port_id; int node_name_lo; int node_name_hi; int port_name_lo; int port_name_hi; scalar_t__ hard_address; int command_code; TYPE_1__ els; } ;
struct TYPE_24__ {char* display_name; int hio_type; TYPE_3__ els_req; TYPE_10__ iparam; void* init_task_tag; void* els_callback_arg; int els_callback; TYPE_6__* node; } ;
typedef TYPE_8__ ocs_io_t ;
typedef int int32_t ;
struct TYPE_25__ {int node_name_lo; int node_name_hi; int port_name_lo; int port_name_hi; } ;
typedef TYPE_9__ fc_plogi_payload_t ;
typedef TYPE_10__ fc_adisc_payload_t ;
typedef int els_cb_t ;
struct TYPE_21__ {int fc_id; } ;
struct TYPE_19__ {scalar_t__ service_params; } ;


 int FC_ELS_CMD_ACC ;
 int OCS_HW_ELS_RSP ;
 int fc_htobe24 (int ) ;
 int node_els_trace () ;
 int ocs_assert (TYPE_6__*,int *) ;
 int ocs_els_io_free (TYPE_8__*) ;
 int ocs_els_send_rsp (TYPE_8__*,int) ;
 int ocs_memset (TYPE_10__*,int ,int) ;

ocs_io_t *
ocs_send_adisc_acc(ocs_io_t *io, uint32_t ox_id, els_cb_t cb, void *cbarg)
{
 ocs_node_t *node = io->node;
 int32_t rc;
 fc_adisc_payload_t *adisc;
 fc_plogi_payload_t *sparams;
 ocs_t *ocs;

 ocs_assert(node, ((void*)0));
 ocs_assert(node->ocs, ((void*)0));
 ocs = node->ocs;

 node_els_trace();

 io->els_callback = cb;
 io->els_callback_arg = cbarg;
 io->display_name = "adisc_acc";
 io->init_task_tag = ox_id;


 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.els.ox_id = ox_id;

 sparams = (fc_plogi_payload_t*) node->sport->service_params;
 adisc = io->els_req.virt;
 ocs_memset(adisc, 0, sizeof(fc_adisc_payload_t));
 adisc->command_code = FC_ELS_CMD_ACC;
 adisc->hard_address = 0;
 adisc->port_name_hi = sparams->port_name_hi;
 adisc->port_name_lo = sparams->port_name_lo;
 adisc->node_name_hi = sparams->node_name_hi;
 adisc->node_name_lo = sparams->node_name_lo;
 adisc->port_id = fc_htobe24(node->rnode.sport->fc_id);

 io->hio_type = OCS_HW_ELS_RSP;
 if ((rc = ocs_els_send_rsp(io, sizeof(*adisc)))) {
  ocs_els_io_free(io);
  io = ((void*)0);
 }

 return io;
}
