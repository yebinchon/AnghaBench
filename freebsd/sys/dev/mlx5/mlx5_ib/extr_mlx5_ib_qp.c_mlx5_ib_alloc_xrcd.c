
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_xrcd {int dummy; } ;
struct mlx5_ib_xrcd {struct ib_xrcd ibxrcd; int xrcdn; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int ENOSYS ;
 struct ib_xrcd* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MLX5_CAP_GEN (int ,int ) ;
 int kfree (struct mlx5_ib_xrcd*) ;
 struct mlx5_ib_xrcd* kmalloc (int,int ) ;
 int mlx5_core_xrcd_alloc (int ,int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;
 int xrc ;

struct ib_xrcd *mlx5_ib_alloc_xrcd(struct ib_device *ibdev,
       struct ib_ucontext *context,
       struct ib_udata *udata)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_ib_xrcd *xrcd;
 int err;

 if (!MLX5_CAP_GEN(dev->mdev, xrc))
  return ERR_PTR(-ENOSYS);

 xrcd = kmalloc(sizeof(*xrcd), GFP_KERNEL);
 if (!xrcd)
  return ERR_PTR(-ENOMEM);

 err = mlx5_core_xrcd_alloc(dev->mdev, &xrcd->xrcdn);
 if (err) {
  kfree(xrcd);
  return ERR_PTR(-ENOMEM);
 }

 return &xrcd->ibxrcd;
}
