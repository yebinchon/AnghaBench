
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_rwq {int core_qp; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_wq {int pd; int device; } ;


 int destroy_user_rq (int ,struct mlx5_ib_rwq*) ;
 int kfree (struct mlx5_ib_rwq*) ;
 int mlx5_core_destroy_rq_tracked (int ,int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_rwq* to_mrwq (struct ib_wq*) ;

int mlx5_ib_destroy_wq(struct ib_wq *wq)
{
 struct mlx5_ib_dev *dev = to_mdev(wq->device);
 struct mlx5_ib_rwq *rwq = to_mrwq(wq);

 mlx5_core_destroy_rq_tracked(dev->mdev, &rwq->core_qp);
 destroy_user_rq(wq->pd, rwq);
 kfree(rwq);

 return 0;
}
