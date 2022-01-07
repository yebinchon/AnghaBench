
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int MLX5_CMD_OP_INIT_HCA ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int init_hca_in ;
 int init_hca_out ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int opcode ;

int mlx5_cmd_init_hca(struct mlx5_core_dev *dev)
{
 u32 in[MLX5_ST_SZ_DW(init_hca_in)];
 u32 out[MLX5_ST_SZ_DW(init_hca_out)];

 memset(in, 0, sizeof(in));

 MLX5_SET(init_hca_in, in, opcode, MLX5_CMD_OP_INIT_HCA);

 memset(out, 0, sizeof(out));
 return mlx5_cmd_exec(dev, in, sizeof(in), out, sizeof(out));
}
