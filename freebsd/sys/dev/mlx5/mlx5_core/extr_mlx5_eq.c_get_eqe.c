
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_eqe {int dummy; } ;
struct mlx5_eq {int buf; } ;


 int MLX5_EQE_SIZE ;
 struct mlx5_eqe* mlx5_buf_offset (int *,int) ;

__attribute__((used)) static struct mlx5_eqe *get_eqe(struct mlx5_eq *eq, u32 entry)
{
 return mlx5_buf_offset(&eq->buf, entry * MLX5_EQE_SIZE);
}
