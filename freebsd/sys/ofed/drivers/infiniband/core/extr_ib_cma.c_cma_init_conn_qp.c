
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int id; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int dummy; } ;


 int IB_QPS_INIT ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 int rdma_init_qp_attr (int *,struct ib_qp_attr*,int*) ;

__attribute__((used)) static int cma_init_conn_qp(struct rdma_id_private *id_priv, struct ib_qp *qp)
{
 struct ib_qp_attr qp_attr;
 int qp_attr_mask, ret;

 qp_attr.qp_state = IB_QPS_INIT;
 ret = rdma_init_qp_attr(&id_priv->id, &qp_attr, &qp_attr_mask);
 if (ret)
  return ret;

 return ib_modify_qp(qp, &qp_attr, qp_attr_mask);
}
