
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_xrcd {int dummy; } ;
struct mlx4_ib_xrcd {int xrcdn; int pd; struct ib_xrcd ibxrcd; int cq; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;


 int ENOMEM ;
 int ENOSYS ;
 struct ib_xrcd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MLX4_DEV_CAP_FLAG_XRC ;
 int PTR_ERR (int ) ;
 int ib_alloc_pd (struct ib_device*,int ) ;
 int ib_create_cq (struct ib_device*,int *,int *,struct mlx4_ib_xrcd*,struct ib_cq_init_attr*) ;
 int ib_dealloc_pd (int ) ;
 int kfree (struct mlx4_ib_xrcd*) ;
 struct mlx4_ib_xrcd* kmalloc (int,int ) ;
 int mlx4_xrcd_alloc (TYPE_3__*,int *) ;
 int mlx4_xrcd_free (TYPE_3__*,int ) ;
 TYPE_2__* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct ib_xrcd *mlx4_ib_alloc_xrcd(struct ib_device *ibdev,
       struct ib_ucontext *context,
       struct ib_udata *udata)
{
 struct mlx4_ib_xrcd *xrcd;
 struct ib_cq_init_attr cq_attr = {};
 int err;

 if (!(to_mdev(ibdev)->dev->caps.flags & MLX4_DEV_CAP_FLAG_XRC))
  return ERR_PTR(-ENOSYS);

 xrcd = kmalloc(sizeof *xrcd, GFP_KERNEL);
 if (!xrcd)
  return ERR_PTR(-ENOMEM);

 err = mlx4_xrcd_alloc(to_mdev(ibdev)->dev, &xrcd->xrcdn);
 if (err)
  goto err1;

 xrcd->pd = ib_alloc_pd(ibdev, 0);
 if (IS_ERR(xrcd->pd)) {
  err = PTR_ERR(xrcd->pd);
  goto err2;
 }

 cq_attr.cqe = 1;
 xrcd->cq = ib_create_cq(ibdev, ((void*)0), ((void*)0), xrcd, &cq_attr);
 if (IS_ERR(xrcd->cq)) {
  err = PTR_ERR(xrcd->cq);
  goto err3;
 }

 return &xrcd->ibxrcd;

err3:
 ib_dealloc_pd(xrcd->pd);
err2:
 mlx4_xrcd_free(to_mdev(ibdev)->dev, xrcd->xrcdn);
err1:
 kfree(xrcd);
 return ERR_PTR(err);
}
