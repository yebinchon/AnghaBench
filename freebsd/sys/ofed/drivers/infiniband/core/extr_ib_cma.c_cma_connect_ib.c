
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_route {int num_paths; int * path_rec; } ;
struct TYPE_3__ {struct ib_cm_id* ib; } ;
struct TYPE_4__ {int qp_type; struct rdma_route route; int device; } ;
struct rdma_id_private {TYPE_1__ cm_id; scalar_t__ srq; int seq_num; TYPE_2__ id; int qp_num; } ;
struct rdma_conn_param {scalar_t__ private_data_len; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; int private_data; } ;
struct ib_cm_req_param {scalar_t__ private_data_len; int srq; int max_cm_retries; void* local_cm_response_timeout; void* remote_cm_response_timeout; void* rnr_retry_count; void* retry_count; int flow_control; int initiator_depth; int responder_resources; int starting_psn; int qp_type; int qp_num; int service_id; int * alternate_path; int * primary_path; void* private_data; } ;
struct ib_cm_id {int dummy; } ;


 void* CMA_CM_RESPONSE_TIMEOUT ;
 int CMA_MAX_CM_RETRIES ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct ib_cm_id*) ;
 int PTR_ERR (struct ib_cm_id*) ;
 int cma_dst_addr (struct rdma_id_private*) ;
 int cma_format_hdr (void*,struct rdma_id_private*) ;
 int cma_ib_handler ;
 int cma_user_data_offset (struct rdma_id_private*) ;
 struct ib_cm_id* ib_create_cm_id (int ,int ,struct rdma_id_private*) ;
 int ib_destroy_cm_id (struct ib_cm_id*) ;
 int ib_send_cm_req (struct ib_cm_id*,struct ib_cm_req_param*) ;
 int kfree (void*) ;
 void* kzalloc (scalar_t__,int ) ;
 int memcpy (char*,int ,scalar_t__) ;
 int memset (struct ib_cm_req_param*,int ,int) ;
 void* min_t (int ,int,int ) ;
 int rdma_get_service_id (TYPE_2__*,int ) ;
 int u8 ;

__attribute__((used)) static int cma_connect_ib(struct rdma_id_private *id_priv,
     struct rdma_conn_param *conn_param)
{
 struct ib_cm_req_param req;
 struct rdma_route *route;
 void *private_data;
 struct ib_cm_id *id;
 int offset, ret;

 memset(&req, 0, sizeof req);
 offset = cma_user_data_offset(id_priv);
 req.private_data_len = offset + conn_param->private_data_len;
 if (req.private_data_len < conn_param->private_data_len)
  return -EINVAL;

 if (req.private_data_len) {
  private_data = kzalloc(req.private_data_len, GFP_ATOMIC);
  if (!private_data)
   return -ENOMEM;
 } else {
  private_data = ((void*)0);
 }

 if (conn_param->private_data && conn_param->private_data_len)
  memcpy((char *)private_data + offset, conn_param->private_data,
         conn_param->private_data_len);

 id = ib_create_cm_id(id_priv->id.device, cma_ib_handler, id_priv);
 if (IS_ERR(id)) {
  ret = PTR_ERR(id);
  goto out;
 }
 id_priv->cm_id.ib = id;

 route = &id_priv->id.route;
 if (private_data) {
  ret = cma_format_hdr(private_data, id_priv);
  if (ret)
   goto out;
  req.private_data = private_data;
 }

 req.primary_path = &route->path_rec[0];
 if (route->num_paths == 2)
  req.alternate_path = &route->path_rec[1];

 req.service_id = rdma_get_service_id(&id_priv->id, cma_dst_addr(id_priv));
 req.qp_num = id_priv->qp_num;
 req.qp_type = id_priv->id.qp_type;
 req.starting_psn = id_priv->seq_num;
 req.responder_resources = conn_param->responder_resources;
 req.initiator_depth = conn_param->initiator_depth;
 req.flow_control = conn_param->flow_control;
 req.retry_count = min_t(u8, 7, conn_param->retry_count);
 req.rnr_retry_count = min_t(u8, 7, conn_param->rnr_retry_count);
 req.remote_cm_response_timeout = CMA_CM_RESPONSE_TIMEOUT;
 req.local_cm_response_timeout = CMA_CM_RESPONSE_TIMEOUT;
 req.max_cm_retries = CMA_MAX_CM_RETRIES;
 req.srq = id_priv->srq ? 1 : 0;

 ret = ib_send_cm_req(id_priv->cm_id.ib, &req);
out:
 if (ret && !IS_ERR(id)) {
  ib_destroy_cm_id(id);
  id_priv->cm_id.ib = ((void*)0);
 }

 kfree(private_data);
 return ret;
}
