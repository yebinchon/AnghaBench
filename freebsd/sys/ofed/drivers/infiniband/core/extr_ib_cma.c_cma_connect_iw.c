
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct iw_cm_id* iw; } ;
struct TYPE_3__ {scalar_t__ qp; int device; } ;
struct rdma_id_private {TYPE_2__ cm_id; int qp_num; TYPE_1__ id; int tos; } ;
struct rdma_conn_param {int qp_num; int private_data_len; int private_data; int responder_resources; int initiator_depth; } ;
struct iw_cm_id {int remote_addr; int local_addr; int tos; } ;
struct iw_cm_conn_param {int qpn; int private_data_len; int private_data; int ird; int ord; } ;


 scalar_t__ IS_ERR (struct iw_cm_id*) ;
 int PTR_ERR (struct iw_cm_id*) ;
 int cma_dst_addr (struct rdma_id_private*) ;
 int cma_iw_handler ;
 int cma_modify_qp_rtr (struct rdma_id_private*,struct rdma_conn_param*) ;
 int cma_src_addr (struct rdma_id_private*) ;
 int iw_cm_connect (struct iw_cm_id*,struct iw_cm_conn_param*) ;
 struct iw_cm_id* iw_create_cm_id (int ,int ,struct rdma_id_private*) ;
 int iw_destroy_cm_id (struct iw_cm_id*) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct iw_cm_conn_param*,int ,int) ;
 int rdma_addr_size (int ) ;

__attribute__((used)) static int cma_connect_iw(struct rdma_id_private *id_priv,
     struct rdma_conn_param *conn_param)
{
 struct iw_cm_id *cm_id;
 int ret;
 struct iw_cm_conn_param iw_param;

 cm_id = iw_create_cm_id(id_priv->id.device, cma_iw_handler, id_priv);
 if (IS_ERR(cm_id))
  return PTR_ERR(cm_id);

 cm_id->tos = id_priv->tos;
 id_priv->cm_id.iw = cm_id;

 memcpy(&cm_id->local_addr, cma_src_addr(id_priv),
        rdma_addr_size(cma_src_addr(id_priv)));
 memcpy(&cm_id->remote_addr, cma_dst_addr(id_priv),
        rdma_addr_size(cma_dst_addr(id_priv)));

 ret = cma_modify_qp_rtr(id_priv, conn_param);
 if (ret)
  goto out;

 if (conn_param) {
  iw_param.ord = conn_param->initiator_depth;
  iw_param.ird = conn_param->responder_resources;
  iw_param.private_data = conn_param->private_data;
  iw_param.private_data_len = conn_param->private_data_len;
  iw_param.qpn = id_priv->id.qp ? id_priv->qp_num : conn_param->qp_num;
 } else {
  memset(&iw_param, 0, sizeof iw_param);
  iw_param.qpn = id_priv->qp_num;
 }
 ret = iw_cm_connect(cm_id, &iw_param);
out:
 if (ret) {
  iw_destroy_cm_id(cm_id);
  id_priv->cm_id.iw = ((void*)0);
 }
 return ret;
}
