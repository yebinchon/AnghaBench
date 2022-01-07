
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq {int dummy; } ;


 int mlx5e_destroy_sq (struct mlx5e_sq*) ;
 int mlx5e_disable_sq (struct mlx5e_sq*) ;
 int mlx5e_drain_sq (struct mlx5e_sq*) ;

__attribute__((used)) static void
mlx5e_close_sq_wait(struct mlx5e_sq *sq)
{

 mlx5e_drain_sq(sq);
 mlx5e_disable_sq(sq);
 mlx5e_destroy_sq(sq);
}
