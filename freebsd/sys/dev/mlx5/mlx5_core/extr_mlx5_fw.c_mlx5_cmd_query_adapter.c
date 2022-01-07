
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int in ;


 int MLX5_CMD_OP_QUERY_ADAPTER ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int opcode ;
 int query_adapter_in ;

__attribute__((used)) static int mlx5_cmd_query_adapter(struct mlx5_core_dev *dev, u32 *out,
      int outlen)
{
 u32 in[MLX5_ST_SZ_DW(query_adapter_in)];
 int err;

 memset(in, 0, sizeof(in));

 MLX5_SET(query_adapter_in, in, opcode, MLX5_CMD_OP_QUERY_ADAPTER);

 err = mlx5_cmd_exec(dev, in, sizeof(in), out, outlen);
 return err;
}
