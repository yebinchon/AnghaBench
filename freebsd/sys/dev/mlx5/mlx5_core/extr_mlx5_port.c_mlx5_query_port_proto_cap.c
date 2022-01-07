
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_PTYS_EN ;
 int MLX5_ST_SZ_DW (int ) ;
 int eth_proto_capability ;
 int ib_proto_capability ;
 int mlx5_query_port_ptys (struct mlx5_core_dev*,int *,int,int,int) ;
 int ptys_reg ;

int mlx5_query_port_proto_cap(struct mlx5_core_dev *dev,
         u32 *proto_cap, int proto_mask)
{
 u32 out[MLX5_ST_SZ_DW(ptys_reg)];
 int err;

 err = mlx5_query_port_ptys(dev, out, sizeof(out), proto_mask, 1);
 if (err)
  return err;

 if (proto_mask == MLX5_PTYS_EN)
  *proto_cap = MLX5_GET(ptys_reg, out, eth_proto_capability);
 else
  *proto_cap = MLX5_GET(ptys_reg, out, ib_proto_capability);

 return 0;
}
