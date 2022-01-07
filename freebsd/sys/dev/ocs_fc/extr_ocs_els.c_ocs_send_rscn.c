
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


typedef int uint32_t ;
typedef int ocs_t ;
struct TYPE_15__ {int * ocs; } ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_13__ {int timeout; } ;
struct TYPE_14__ {TYPE_2__ els; } ;
struct TYPE_12__ {TYPE_6__* virt; } ;
struct TYPE_16__ {int els_timeout_sec; int els_retries_remaining; char* display_name; TYPE_3__ iparam; int hio_type; TYPE_1__ els_req; void* els_callback_arg; int els_callback; } ;
typedef TYPE_5__ ocs_io_t ;
struct TYPE_17__ {int page_length; int port_list; int payload_length; int command_code; } ;
typedef TYPE_6__ fc_rscn_payload_t ;
typedef int fc_rscn_affected_port_id_page_t ;
typedef int els_cb_t ;


 int FC_ELS_CMD_RSCN ;
 int OCS_ELS_ROLE_ORIGINATOR ;
 int OCS_HW_ELS_REQ ;
 int __ocs_els_init ;
 int node_els_trace () ;
 TYPE_5__* ocs_els_io_alloc (TYPE_4__*,int,int ) ;
 int ocs_htobe16 (int) ;
 int ocs_io_transition (TYPE_5__*,int ,int *) ;
 int ocs_log_err (int *,char*) ;
 int ocs_memcpy (int ,void*,int) ;

ocs_io_t *
ocs_send_rscn(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
 void *port_ids, uint32_t port_ids_count, els_cb_t cb, void *cbarg)
{
 ocs_io_t *els;
 ocs_t *ocs = node->ocs;
 fc_rscn_payload_t *req;
 uint32_t payload_length = sizeof(fc_rscn_affected_port_id_page_t)*(port_ids_count - 1) +
  sizeof(fc_rscn_payload_t);

 node_els_trace();

 els = ocs_els_io_alloc(node, payload_length, OCS_ELS_ROLE_ORIGINATOR);
 if (els == ((void*)0)) {
  ocs_log_err(ocs, "IO alloc failed\n");
 } else {
  els->els_timeout_sec = timeout_sec;
  els->els_retries_remaining = retries;
  els->els_callback = cb;
  els->els_callback_arg = cbarg;
  els->display_name = "rscn";

  req = els->els_req.virt;

  req->command_code = FC_ELS_CMD_RSCN;
  req->page_length = sizeof(fc_rscn_affected_port_id_page_t);
  req->payload_length = ocs_htobe16(sizeof(*req) +
   sizeof(fc_rscn_affected_port_id_page_t)*(port_ids_count-1));

  els->hio_type = OCS_HW_ELS_REQ;
  els->iparam.els.timeout = timeout_sec;


  ocs_memcpy(req->port_list, port_ids, port_ids_count*sizeof(fc_rscn_affected_port_id_page_t));


  ocs_io_transition(els, __ocs_els_init, ((void*)0));
 }
 return els;
}
