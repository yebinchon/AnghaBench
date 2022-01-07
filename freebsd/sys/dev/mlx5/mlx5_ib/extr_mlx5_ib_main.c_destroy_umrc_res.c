
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pd; int cq; int qp; } ;
struct mlx5_ib_dev {TYPE_1__ umrc; } ;


 int ib_dealloc_pd (int ) ;
 int ib_free_cq (int ) ;
 int mlx5_ib_destroy_qp (int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;
 int mlx5_mr_cache_cleanup (struct mlx5_ib_dev*) ;

__attribute__((used)) static void destroy_umrc_res(struct mlx5_ib_dev *dev)
{
 int err;

 err = mlx5_mr_cache_cleanup(dev);
 if (err)
  mlx5_ib_warn(dev, "mr cache cleanup failed\n");

 mlx5_ib_destroy_qp(dev->umrc.qp);
 ib_free_cq(dev->umrc.cq);
 ib_dealloc_pd(dev->umrc.pd);
}
