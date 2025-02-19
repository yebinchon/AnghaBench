
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int EPERM ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CMD_OP_QUERY_VPORT_COUNTER ;
 int MLX5_SET (int ,void*,int,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,void*,int,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int num_ports ;
 int opcode ;
 int other_vport ;
 int query_vport_counter_in ;
 int vport_group_manager ;
 int vport_number ;

int mlx5_query_vport_counter(struct mlx5_core_dev *dev,
        u8 port_num, u16 vport_num,
        void *out, int out_size)
{
 int in_sz = MLX5_ST_SZ_BYTES(query_vport_counter_in);
 int is_group_manager;
 void *in;
 int err;

 is_group_manager = MLX5_CAP_GEN(dev, vport_group_manager);

 in = mlx5_vzalloc(in_sz);
 if (!in)
  return -ENOMEM;

 MLX5_SET(query_vport_counter_in, in, opcode,
   MLX5_CMD_OP_QUERY_VPORT_COUNTER);
 if (vport_num) {
  if (is_group_manager) {
   MLX5_SET(query_vport_counter_in, in, other_vport, 1);
   MLX5_SET(query_vport_counter_in, in, vport_number,
     vport_num);
  } else {
   err = -EPERM;
   goto ex;
  }
 }
 if (MLX5_CAP_GEN(dev, num_ports) == 2)
  MLX5_SET(query_vport_counter_in, in, port_num, port_num);

 err = mlx5_cmd_exec(dev, in, in_sz, out, out_size);

ex:
 kvfree(in);
 return err;
}
