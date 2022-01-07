
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qp; } ;
struct rdma_id_private {int qp_mutex; TYPE_1__ id; } ;
struct ib_qp_attr {int qp_state; } ;


 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma_modify_qp_err(struct rdma_id_private *id_priv)
{
 struct ib_qp_attr qp_attr;
 int ret;

 mutex_lock(&id_priv->qp_mutex);
 if (!id_priv->id.qp) {
  ret = 0;
  goto out;
 }

 qp_attr.qp_state = IB_QPS_ERR;
 ret = ib_modify_qp(id_priv->id.qp, &qp_attr, IB_QP_STATE);
out:
 mutex_unlock(&id_priv->qp_mutex);
 return ret;
}
