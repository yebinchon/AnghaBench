
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_rwq_ind_table {int rqtn; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_rwq_ind_table {int device; } ;


 int kfree (struct mlx5_ib_rwq_ind_table*) ;
 int mlx5_core_destroy_rqt (int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_rwq_ind_table* to_mrwq_ind_table (struct ib_rwq_ind_table*) ;

int mlx5_ib_destroy_rwq_ind_table(struct ib_rwq_ind_table *ib_rwq_ind_tbl)
{
 struct mlx5_ib_rwq_ind_table *rwq_ind_tbl = to_mrwq_ind_table(ib_rwq_ind_tbl);
 struct mlx5_ib_dev *dev = to_mdev(ib_rwq_ind_tbl->device);

 mlx5_core_destroy_rqt(dev->mdev, rwq_ind_tbl->rqtn);

 kfree(rwq_ind_tbl);
 return 0;
}
