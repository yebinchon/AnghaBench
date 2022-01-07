
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_cq {int mcq; } ;
struct ib_ucontext {int dummy; } ;
struct ib_cq {TYPE_1__* uobject; int device; } ;
struct TYPE_2__ {struct ib_ucontext* context; } ;


 int destroy_cq_kernel (struct mlx5_ib_dev*,struct mlx5_ib_cq*) ;
 int destroy_cq_user (struct mlx5_ib_cq*,struct ib_ucontext*) ;
 int kfree (struct mlx5_ib_cq*) ;
 int mlx5_core_destroy_cq (int ,int *) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

int mlx5_ib_destroy_cq(struct ib_cq *cq)
{
 struct mlx5_ib_dev *dev = to_mdev(cq->device);
 struct mlx5_ib_cq *mcq = to_mcq(cq);
 struct ib_ucontext *context = ((void*)0);

 if (cq->uobject)
  context = cq->uobject->context;

 mlx5_core_destroy_cq(dev->mdev, &mcq->mcq);
 if (context)
  destroy_cq_user(mcq, context);
 else
  destroy_cq_kernel(dev, mcq);

 kfree(mcq);

 return 0;
}
