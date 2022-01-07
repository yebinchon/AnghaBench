
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int in ;


 int ENOTSUPP ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_REG_QETCR ;
 int MLX5_ST_SZ_DW (int ) ;
 int ets ;
 int memset (int *,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int ) ;
 int qetc_reg ;

__attribute__((used)) static int mlx5_query_port_qetcr_reg(struct mlx5_core_dev *mdev, u32 *out,
         int outlen)
{
 u32 in[MLX5_ST_SZ_DW(qetc_reg)];

 if (!MLX5_CAP_GEN(mdev, ets))
  return -ENOTSUPP;

 memset(in, 0, sizeof(in));
 return mlx5_core_access_reg(mdev, in, sizeof(in), out, outlen,
        MLX5_REG_QETCR, 0, 0);
}
