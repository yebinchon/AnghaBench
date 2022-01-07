
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_pd {int pdn; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_pd {int device; } ;


 int kfree (struct mlx5_ib_pd*) ;
 int mlx5_core_dealloc_pd (int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_pd* to_mpd (struct ib_pd*) ;

__attribute__((used)) static int mlx5_ib_dealloc_pd(struct ib_pd *pd)
{
 struct mlx5_ib_dev *mdev = to_mdev(pd->device);
 struct mlx5_ib_pd *mpd = to_mpd(pd);

 mlx5_core_dealloc_pd(mdev->mdev, mpd->pdn);
 kfree(mpd);

 return 0;
}
