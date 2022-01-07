
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd_msg {int dummy; } ;


 int mlx5_fwp_free (struct mlx5_cmd_msg*) ;

__attribute__((used)) static void
mlx5_free_cmd_msg(struct mlx5_core_dev *dev, struct mlx5_cmd_msg *msg)
{

 mlx5_fwp_free(msg);
}
