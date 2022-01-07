
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_reg_host_endianess {int he; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int he_out ;
typedef int he_in ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int MLX5_REG_HOST_ENDIANNESS ;
 int MLX5_SET_HOST_ENDIANNESS ;
 int memset (struct mlx5_reg_host_endianess*,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,struct mlx5_reg_host_endianess*,int,struct mlx5_reg_host_endianess*,int,int ,int ,int) ;
 int port_type ;
 int roce ;

__attribute__((used)) static int set_hca_ctrl(struct mlx5_core_dev *dev)
{
 struct mlx5_reg_host_endianess he_in;
 struct mlx5_reg_host_endianess he_out;
 int err;

 if (MLX5_CAP_GEN(dev, port_type) == MLX5_CAP_PORT_TYPE_ETH &&
     !MLX5_CAP_GEN(dev, roce))
  return 0;

 memset(&he_in, 0, sizeof(he_in));
 he_in.he = MLX5_SET_HOST_ENDIANNESS;
 err = mlx5_core_access_reg(dev, &he_in, sizeof(he_in),
     &he_out, sizeof(he_out),
     MLX5_REG_HOST_ENDIANNESS, 0, 1);
 return err;
}
