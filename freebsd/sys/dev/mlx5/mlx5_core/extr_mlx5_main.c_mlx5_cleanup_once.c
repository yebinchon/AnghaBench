
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_cleanup_cq_table (struct mlx5_core_dev*) ;
 int mlx5_cleanup_mr_table (struct mlx5_core_dev*) ;
 int mlx5_cleanup_qp_table (struct mlx5_core_dev*) ;
 int mlx5_cleanup_reserved_gids (struct mlx5_core_dev*) ;
 int mlx5_cleanup_rl_table (struct mlx5_core_dev*) ;
 int mlx5_cleanup_srq_table (struct mlx5_core_dev*) ;
 int mlx5_eq_cleanup (struct mlx5_core_dev*) ;
 int mlx5_fpga_cleanup (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_cleanup_once(struct mlx5_core_dev *dev)
{



 mlx5_fpga_cleanup(dev);
 mlx5_cleanup_reserved_gids(dev);
 mlx5_cleanup_mr_table(dev);
 mlx5_cleanup_srq_table(dev);
 mlx5_cleanup_qp_table(dev);
 mlx5_cleanup_cq_table(dev);
 mlx5_eq_cleanup(dev);
}
