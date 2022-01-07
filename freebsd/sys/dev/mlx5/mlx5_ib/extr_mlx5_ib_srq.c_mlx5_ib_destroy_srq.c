
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_srq {int umem; int db; int msrq; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_srq {TYPE_1__* uobject; int device; } ;
struct TYPE_2__ {int context; } ;


 int destroy_srq_kernel (struct mlx5_ib_dev*,struct mlx5_ib_srq*) ;
 int ib_umem_release (int ) ;
 int kfree (struct ib_srq*) ;
 int mlx5_core_destroy_srq (int ,int *) ;
 int mlx5_ib_db_unmap_user (int ,int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_srq* to_msrq (struct ib_srq*) ;
 int to_mucontext (int ) ;

int mlx5_ib_destroy_srq(struct ib_srq *srq)
{
 struct mlx5_ib_dev *dev = to_mdev(srq->device);
 struct mlx5_ib_srq *msrq = to_msrq(srq);

 mlx5_core_destroy_srq(dev->mdev, &msrq->msrq);

 if (srq->uobject) {
  mlx5_ib_db_unmap_user(to_mucontext(srq->uobject->context), &msrq->db);
  ib_umem_release(msrq->umem);
 } else {
  destroy_srq_kernel(dev, msrq);
 }

 kfree(srq);
 return 0;
}
