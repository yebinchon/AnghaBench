
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;
typedef enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CMD_OP_MODIFY_CONG_PARAMS ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int cong_protocol ;
 int congestion_parameters ;
 int field_select ;
 int field_select_r_roce_rp ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int mlx5_cmd_modify_cong_params (int ,void*,int) ;
 int mlx5_ib_param_to_node (int) ;
 int mlx5_ib_set_cc_param_mask_val (void*,int,int ,int*) ;
 int modify_cong_params_in ;
 int opcode ;

__attribute__((used)) static int
mlx5_ib_set_cc_params(struct mlx5_ib_dev *dev, u32 index, u64 var)
{
 int inlen = MLX5_ST_SZ_BYTES(modify_cong_params_in);
 enum mlx5_ib_cong_node_type node;
 u32 attr_mask = 0;
 void *field;
 void *in;
 int err;

 in = kzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_cong_params_in, in, opcode,
   MLX5_CMD_OP_MODIFY_CONG_PARAMS);

 node = mlx5_ib_param_to_node(index);
 MLX5_SET(modify_cong_params_in, in, cong_protocol, node);

 field = MLX5_ADDR_OF(modify_cong_params_in, in, congestion_parameters);
 mlx5_ib_set_cc_param_mask_val(field, index, var, &attr_mask);

 field = MLX5_ADDR_OF(modify_cong_params_in, in, field_select);
 MLX5_SET(field_select_r_roce_rp, field, field_select_r_roce_rp,
   attr_mask);

 err = mlx5_cmd_modify_cong_params(dev->mdev, in, inlen);
 kfree(in);

 return err;
}
