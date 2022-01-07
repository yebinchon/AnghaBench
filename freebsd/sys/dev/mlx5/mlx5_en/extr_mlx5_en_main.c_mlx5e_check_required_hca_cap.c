
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int ENODEV ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int port_type ;

__attribute__((used)) static int
mlx5e_check_required_hca_cap(struct mlx5_core_dev *mdev)
{
 if (MLX5_CAP_GEN(mdev, port_type) != MLX5_CAP_PORT_TYPE_ETH)
  return (-ENODEV);

 return (0);
}
