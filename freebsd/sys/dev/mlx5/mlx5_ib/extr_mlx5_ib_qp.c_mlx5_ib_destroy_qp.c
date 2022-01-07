
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_qp {int dummy; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int device; } ;


 scalar_t__ IB_QPT_GSI ;
 int destroy_qp_common (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ;
 int kfree (struct mlx5_ib_qp*) ;
 int mlx5_ib_gsi_destroy_qp (struct ib_qp*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_qp* to_mqp (struct ib_qp*) ;
 scalar_t__ unlikely (int) ;

int mlx5_ib_destroy_qp(struct ib_qp *qp)
{
 struct mlx5_ib_dev *dev = to_mdev(qp->device);
 struct mlx5_ib_qp *mqp = to_mqp(qp);

 if (unlikely(qp->qp_type == IB_QPT_GSI))
  return mlx5_ib_gsi_destroy_qp(qp);

 destroy_qp_common(dev, mqp);

 kfree(mqp);

 return 0;
}
