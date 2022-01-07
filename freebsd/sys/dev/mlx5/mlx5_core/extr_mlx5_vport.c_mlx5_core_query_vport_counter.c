
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int EPERM ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CMD_OP_QUERY_VPORT_COUNTER ;
 int MLX5_SET (int ,void*,int,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,void*,int,void*,size_t) ;
 void* mlx5_vzalloc (int) ;
 int num_ports ;
 int opcode ;
 int query_vport_counter_in ;
 int vport_group_manager ;
 int vport_number ;

int mlx5_core_query_vport_counter(struct mlx5_core_dev *dev, u8 other_vport,
      int vf, u8 port_num, void *out,
      size_t out_sz)
{
 int in_sz = MLX5_ST_SZ_BYTES(query_vport_counter_in);
 int is_group_manager;
 void *in;
 int err;

 is_group_manager = MLX5_CAP_GEN(dev, vport_group_manager);
 in = mlx5_vzalloc(in_sz);
 if (!in) {
  err = -ENOMEM;
  return err;
 }

 MLX5_SET(query_vport_counter_in, in, opcode,
   MLX5_CMD_OP_QUERY_VPORT_COUNTER);
 if (other_vport) {
  if (is_group_manager) {
   MLX5_SET(query_vport_counter_in, in, other_vport, 1);
   MLX5_SET(query_vport_counter_in, in, vport_number, vf + 1);
  } else {
   err = -EPERM;
   goto free;
  }
 }
 if (MLX5_CAP_GEN(dev, num_ports) == 2)
  MLX5_SET(query_vport_counter_in, in, port_num, port_num);

 err = mlx5_cmd_exec(dev, in, in_sz, out, out_sz);
free:
 kvfree(in);
 return err;
}
