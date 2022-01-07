
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int * dump_data; int dump_lock; } ;


 int MA_OWNED ;
 int M_MLX5_DUMP ;
 int free (int *,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
mlx5_fwdump_destroy_dd(struct mlx5_core_dev *mdev)
{

 mtx_assert(&mdev->dump_lock, MA_OWNED);
 free(mdev->dump_data, M_MLX5_DUMP);
 mdev->dump_data = ((void*)0);
}
