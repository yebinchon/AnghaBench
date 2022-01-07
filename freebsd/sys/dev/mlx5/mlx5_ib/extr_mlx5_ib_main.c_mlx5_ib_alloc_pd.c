
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int dummy; } ;
struct mlx5_ib_pd {struct ib_pd ibpd; int pdn; } ;
struct mlx5_ib_alloc_pd_resp {int pdn; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int resp ;
struct TYPE_2__ {int mdev; } ;


 int EFAULT ;
 int ENOMEM ;
 struct ib_pd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,struct mlx5_ib_alloc_pd_resp*,int) ;
 int kfree (struct mlx5_ib_pd*) ;
 struct mlx5_ib_pd* kmalloc (int,int ) ;
 int mlx5_core_alloc_pd (int ,int *) ;
 int mlx5_core_dealloc_pd (int ,int ) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct ib_pd *mlx5_ib_alloc_pd(struct ib_device *ibdev,
          struct ib_ucontext *context,
          struct ib_udata *udata)
{
 struct mlx5_ib_alloc_pd_resp resp;
 struct mlx5_ib_pd *pd;
 int err;

 pd = kmalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return ERR_PTR(-ENOMEM);

 err = mlx5_core_alloc_pd(to_mdev(ibdev)->mdev, &pd->pdn);
 if (err) {
  kfree(pd);
  return ERR_PTR(err);
 }

 if (context) {
  resp.pdn = pd->pdn;
  if (ib_copy_to_udata(udata, &resp, sizeof(resp))) {
   mlx5_core_dealloc_pd(to_mdev(ibdev)->mdev, pd->pdn);
   kfree(pd);
   return ERR_PTR(-EFAULT);
  }
 }

 return &pd->ibpd;
}
