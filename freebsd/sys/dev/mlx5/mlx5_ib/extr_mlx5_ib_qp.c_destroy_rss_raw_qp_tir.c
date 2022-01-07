
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tirn; } ;
struct mlx5_ib_qp {TYPE_1__ rss_qp; } ;
struct mlx5_ib_dev {int mdev; } ;


 int mlx5_core_destroy_tir (int ,int ) ;

__attribute__((used)) static void destroy_rss_raw_qp_tir(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
 mlx5_core_destroy_tir(dev->mdev, qp->rss_qp.tirn);
}
