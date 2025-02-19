
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ib; } ;
struct rdma_id_private {TYPE_1__ cm_id; scalar_t__ srq; int seq_num; int qp_num; } ;
struct rdma_conn_param {int rnr_retry_count; int flow_control; int initiator_depth; int responder_resources; int private_data_len; int private_data; } ;
struct ib_cm_rep_param {int srq; int rnr_retry_count; int flow_control; scalar_t__ failover_accepted; int initiator_depth; int responder_resources; int private_data_len; int private_data; int starting_psn; int qp_num; } ;


 int cma_modify_qp_rtr (struct rdma_id_private*,struct rdma_conn_param*) ;
 int cma_modify_qp_rts (struct rdma_id_private*,struct rdma_conn_param*) ;
 int ib_send_cm_rep (int ,struct ib_cm_rep_param*) ;
 int memset (struct ib_cm_rep_param*,int ,int) ;
 int min_t (int ,int,int ) ;
 int u8 ;

__attribute__((used)) static int cma_accept_ib(struct rdma_id_private *id_priv,
    struct rdma_conn_param *conn_param)
{
 struct ib_cm_rep_param rep;
 int ret;

 ret = cma_modify_qp_rtr(id_priv, conn_param);
 if (ret)
  goto out;

 ret = cma_modify_qp_rts(id_priv, conn_param);
 if (ret)
  goto out;

 memset(&rep, 0, sizeof rep);
 rep.qp_num = id_priv->qp_num;
 rep.starting_psn = id_priv->seq_num;
 rep.private_data = conn_param->private_data;
 rep.private_data_len = conn_param->private_data_len;
 rep.responder_resources = conn_param->responder_resources;
 rep.initiator_depth = conn_param->initiator_depth;
 rep.failover_accepted = 0;
 rep.flow_control = conn_param->flow_control;
 rep.rnr_retry_count = min_t(u8, 7, conn_param->rnr_retry_count);
 rep.srq = id_priv->srq ? 1 : 0;

 ret = ib_send_cm_rep(id_priv->cm_id.ib, &rep);
out:
 return ret;
}
