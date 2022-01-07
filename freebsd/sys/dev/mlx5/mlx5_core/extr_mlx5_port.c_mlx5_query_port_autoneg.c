
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int *) ;
 int MLX5_ST_SZ_DW (int ) ;
 int * an_disable_admin ;
 int mlx5_query_port_ptys (struct mlx5_core_dev*,int *,int,int,int) ;
 int ptys_reg ;

int mlx5_query_port_autoneg(struct mlx5_core_dev *dev, int proto_mask,
       u8 *an_disable_cap, u8 *an_disable_status)
{
 u32 out[MLX5_ST_SZ_DW(ptys_reg)];
 int err;

 err = mlx5_query_port_ptys(dev, out, sizeof(out), proto_mask, 1);
 if (err)
  return err;

 *an_disable_status = MLX5_GET(ptys_reg, out, an_disable_admin);
 *an_disable_cap = MLX5_GET(ptys_reg, out, an_disable_cap);

 return 0;
}
