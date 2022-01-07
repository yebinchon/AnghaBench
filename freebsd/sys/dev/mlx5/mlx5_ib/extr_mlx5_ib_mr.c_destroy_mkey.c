
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_mr {int mmkey; } ;
struct mlx5_ib_dev {int mr_srcu; int mdev; } ;


 int mlx5_core_destroy_mkey (int ,int *) ;
 int synchronize_srcu (int *) ;

__attribute__((used)) static int destroy_mkey(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
 int err = mlx5_core_destroy_mkey(dev->mdev, &mr->mmkey);






 return err;
}
