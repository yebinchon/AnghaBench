
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * arg; } ;
struct mlx5_ib_dev {TYPE_1__ congestion; int mdev; } ;
typedef enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 size_t MLX5_IB_CONG_PARAMS_NUM ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int congestion_parameters ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int mlx5_cmd_query_cong_params (int ,int,void*,int) ;
 int mlx5_get_cc_param_val (void*,size_t) ;
 int mlx5_ib_param_to_node (size_t) ;
 int query_cong_params_out ;

__attribute__((used)) static int
mlx5_ib_get_all_cc_params(struct mlx5_ib_dev *dev)
{
 int outlen = MLX5_ST_SZ_BYTES(query_cong_params_out);
 enum mlx5_ib_cong_node_type node = 0;
 void *out;
 void *field;
 u32 x;
 int err = 0;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;


 for (x = 0; x != MLX5_IB_CONG_PARAMS_NUM; x++) {
  if (node != mlx5_ib_param_to_node(x)) {
   node = mlx5_ib_param_to_node(x);

   err = mlx5_cmd_query_cong_params(dev->mdev, node, out, outlen);
   if (err)
    break;
  }
  field = MLX5_ADDR_OF(query_cong_params_out, out, congestion_parameters);
  dev->congestion.arg[x] = mlx5_get_cc_param_val(field, x);
 }
 kfree(out);
 return err;
}
