
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_mw {int mmkey; } ;
struct ib_mw {int device; } ;
struct TYPE_2__ {int mdev; } ;


 int kfree (struct mlx5_ib_mw*) ;
 int mlx5_core_destroy_mkey (int ,int *) ;
 TYPE_1__* to_mdev (int ) ;
 struct mlx5_ib_mw* to_mmw (struct ib_mw*) ;

int mlx5_ib_dealloc_mw(struct ib_mw *mw)
{
 struct mlx5_ib_mw *mmw = to_mmw(mw);
 int err;

 err = mlx5_core_destroy_mkey((to_mdev(mw->device))->mdev,
          &mmw->mmkey);
 if (!err)
  kfree(mmw);
 return err;
}
