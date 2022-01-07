
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_PTYS_EN ;
 int MLX5_ST_SZ_DW (int ) ;
 int eth_proto_oper ;
 int mlx5_query_port_ptys (struct mlx5_core_dev*,int *,int,int ,int ) ;
 int ptys_reg ;

int mlx5_query_port_eth_proto_oper(struct mlx5_core_dev *dev,
       u32 *proto_oper, u8 local_port)
{
 u32 out[MLX5_ST_SZ_DW(ptys_reg)];
 int err;

 err = mlx5_query_port_ptys(dev, out, sizeof(out), MLX5_PTYS_EN,
       local_port);
 if (err)
  return err;

 *proto_oper = MLX5_GET(ptys_reg, out, eth_proto_oper);

 return 0;
}
