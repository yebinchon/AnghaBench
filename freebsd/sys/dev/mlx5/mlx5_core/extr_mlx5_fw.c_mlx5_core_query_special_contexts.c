
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int resd_lkey; } ;
struct mlx5_core_dev {TYPE_1__ special_contexts; } ;
typedef int out ;
typedef int in ;


 int MLX5_CMD_OP_QUERY_SPECIAL_CONTEXTS ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int opcode ;
 int query_special_contexts_in ;
 int query_special_contexts_out ;
 int resd_lkey ;

__attribute__((used)) static int mlx5_core_query_special_contexts(struct mlx5_core_dev *dev)
{
 u32 in[MLX5_ST_SZ_DW(query_special_contexts_in)];
 u32 out[MLX5_ST_SZ_DW(query_special_contexts_out)];
 int err;

 memset(in, 0, sizeof(in));
 memset(out, 0, sizeof(out));

 MLX5_SET(query_special_contexts_in, in, opcode,
   MLX5_CMD_OP_QUERY_SPECIAL_CONTEXTS);
 err = mlx5_cmd_exec(dev, in, sizeof(in), out, sizeof(out));
 if (err)
  return err;

 dev->special_contexts.resd_lkey = MLX5_GET(query_special_contexts_out,
         out, resd_lkey);

 return err;
}
