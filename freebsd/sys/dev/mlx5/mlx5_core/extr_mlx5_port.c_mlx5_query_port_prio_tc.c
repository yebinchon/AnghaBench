
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_REG_QTCT ;
 int MLX5_SET (int ,int *,int,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int memset (int *,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int ) ;
 int port_number ;
 int qtct_reg ;
 int tclass ;

int mlx5_query_port_prio_tc(struct mlx5_core_dev *mdev,
       u8 prio, u8 *tc)
{
 u32 in[MLX5_ST_SZ_DW(qtct_reg)];
 u32 out[MLX5_ST_SZ_DW(qtct_reg)];
 int err;

 memset(in, 0, sizeof(in));
 memset(out, 0, sizeof(out));

 MLX5_SET(qtct_reg, in, port_number, 1);
 MLX5_SET(qtct_reg, in, prio, prio);

 err = mlx5_core_access_reg(mdev, in, sizeof(in), out,
       sizeof(out), MLX5_REG_QTCT, 0, 0);
 if (!err)
  *tc = MLX5_GET(qtct_reg, out, tclass);

 return err;
}
