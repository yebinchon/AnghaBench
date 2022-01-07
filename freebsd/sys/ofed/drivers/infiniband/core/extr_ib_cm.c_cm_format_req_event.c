
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ib_cm_req_event_param {int ppath_sgid_index; int srq; int rnr_retry_count; int retry_count; int remote_cm_response_timeout; int flow_control; int local_cm_response_timeout; int initiator_depth; int responder_resources; void* starting_psn; int qp_type; void* remote_qpn; void* remote_qkey; int remote_ca_guid; int * alternate_path; int * primary_path; int port; int bth_pkey; struct ib_cm_id* listen_id; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_11__ {struct ib_cm_req_event_param req_rcvd; } ;
struct TYPE_16__ {int * private_data; TYPE_3__ param; } ;
struct cm_work {TYPE_8__ cm_event; int * path; TYPE_2__* mad_recv_wc; } ;
struct cm_req_msg {int private_data; int local_qkey; int local_ca_guid; scalar_t__ alt_local_lid; } ;
struct TYPE_13__ {int sgid_index; } ;
struct TYPE_14__ {TYPE_5__ grh; } ;
struct TYPE_15__ {TYPE_6__ ah_attr; TYPE_4__* port; } ;
struct cm_id_private {TYPE_7__ av; } ;
struct TYPE_12__ {int port_num; } ;
struct TYPE_9__ {scalar_t__ mad; } ;
struct TYPE_10__ {TYPE_1__ recv_buf; } ;


 void* be32_to_cpu (int ) ;
 int cm_get_bth_pkey (struct cm_work*) ;
 int cm_req_get_flow_ctrl (struct cm_req_msg*) ;
 int cm_req_get_init_depth (struct cm_req_msg*) ;
 int cm_req_get_local_qpn (struct cm_req_msg*) ;
 int cm_req_get_local_resp_timeout (struct cm_req_msg*) ;
 int cm_req_get_qp_type (struct cm_req_msg*) ;
 int cm_req_get_remote_resp_timeout (struct cm_req_msg*) ;
 int cm_req_get_resp_res (struct cm_req_msg*) ;
 int cm_req_get_retry_count (struct cm_req_msg*) ;
 int cm_req_get_rnr_retry_count (struct cm_req_msg*) ;
 int cm_req_get_srq (struct cm_req_msg*) ;
 int cm_req_get_starting_psn (struct cm_req_msg*) ;

__attribute__((used)) static void cm_format_req_event(struct cm_work *work,
    struct cm_id_private *cm_id_priv,
    struct ib_cm_id *listen_id)
{
 struct cm_req_msg *req_msg;
 struct ib_cm_req_event_param *param;

 req_msg = (struct cm_req_msg *)work->mad_recv_wc->recv_buf.mad;
 param = &work->cm_event.param.req_rcvd;
 param->listen_id = listen_id;
 param->bth_pkey = cm_get_bth_pkey(work);
 param->port = cm_id_priv->av.port->port_num;
 param->primary_path = &work->path[0];
 if (req_msg->alt_local_lid)
  param->alternate_path = &work->path[1];
 else
  param->alternate_path = ((void*)0);
 param->remote_ca_guid = req_msg->local_ca_guid;
 param->remote_qkey = be32_to_cpu(req_msg->local_qkey);
 param->remote_qpn = be32_to_cpu(cm_req_get_local_qpn(req_msg));
 param->qp_type = cm_req_get_qp_type(req_msg);
 param->starting_psn = be32_to_cpu(cm_req_get_starting_psn(req_msg));
 param->responder_resources = cm_req_get_init_depth(req_msg);
 param->initiator_depth = cm_req_get_resp_res(req_msg);
 param->local_cm_response_timeout =
     cm_req_get_remote_resp_timeout(req_msg);
 param->flow_control = cm_req_get_flow_ctrl(req_msg);
 param->remote_cm_response_timeout =
     cm_req_get_local_resp_timeout(req_msg);
 param->retry_count = cm_req_get_retry_count(req_msg);
 param->rnr_retry_count = cm_req_get_rnr_retry_count(req_msg);
 param->srq = cm_req_get_srq(req_msg);
 param->ppath_sgid_index = cm_id_priv->av.ah_attr.grh.sgid_index;
 work->cm_event.private_data = &req_msg->private_data;
}
