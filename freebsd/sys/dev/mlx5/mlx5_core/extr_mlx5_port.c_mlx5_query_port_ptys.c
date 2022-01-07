
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int in ;


 int MLX5_REG_PTYS ;
 int MLX5_SET (int ,int *,int,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int memset (int *,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int ) ;
 int ptys_reg ;

int mlx5_query_port_ptys(struct mlx5_core_dev *dev, u32 *ptys,
    int ptys_size, int proto_mask, u8 local_port)
{
 u32 in[MLX5_ST_SZ_DW(ptys_reg)];
 int err;

 memset(in, 0, sizeof(in));
 MLX5_SET(ptys_reg, in, local_port, local_port);
 MLX5_SET(ptys_reg, in, proto_mask, proto_mask);

 err = mlx5_core_access_reg(dev, in, sizeof(in), ptys,
       ptys_size, MLX5_REG_PTYS, 0, 0);

 return err;
}
