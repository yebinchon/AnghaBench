
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_gsi_qp {int mutex; int cap; int rx_qp; } ;
struct ib_qp_init_attr {int cap; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int dummy; } ;


 struct mlx5_ib_gsi_qp* gsi_qp (struct ib_qp*) ;
 int ib_query_qp (int ,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_ib_gsi_query_qp(struct ib_qp *qp, struct ib_qp_attr *qp_attr,
    int qp_attr_mask,
    struct ib_qp_init_attr *qp_init_attr)
{
 struct mlx5_ib_gsi_qp *gsi = gsi_qp(qp);
 int ret;

 mutex_lock(&gsi->mutex);
 ret = ib_query_qp(gsi->rx_qp, qp_attr, qp_attr_mask, qp_init_attr);
 qp_init_attr->cap = gsi->cap;
 mutex_unlock(&gsi->mutex);

 return ret;
}
