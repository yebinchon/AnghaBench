
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dump_rege; int dump_lock; scalar_t__ dump_copyout; } ;


 int M_MLX5_DUMP ;
 int free (int ,int ) ;
 int mlx5_fwdump_destroy_dd (struct mlx5_core_dev*) ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
mlx5_fwdump_clean(struct mlx5_core_dev *mdev)
{

 mtx_lock(&mdev->dump_lock);
 while (mdev->dump_copyout)
  msleep(&mdev->dump_copyout, &mdev->dump_lock, 0, "mlx5fwc", 0);
 mlx5_fwdump_destroy_dd(mdev);
 mtx_unlock(&mdev->dump_lock);
 free(mdev->dump_rege, M_MLX5_DUMP);
}
