
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface_id; int subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef int u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ MLX5_ADDR_OF (int ,void*,union ib_gid*) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CMD_OP_QUERY_HCA_VPORT_GID ;
 int MLX5_SET (int ,void*,int,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int gid_table_size ;
 int kvfree (void*) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,void*,int,void*,int) ;
 int mlx5_get_gid_table_len (int) ;
 void* mlx5_vzalloc (int) ;
 int num_ports ;
 int opcode ;
 int other_vport ;
 int query_hca_vport_gid_in ;
 int query_hca_vport_gid_out ;
 int vport_group_manager ;
 int vport_number ;

int mlx5_query_hca_vport_gid(struct mlx5_core_dev *dev, u8 port_num,
        u16 vport_num, u16 gid_index, union ib_gid *gid)
{
 int in_sz = MLX5_ST_SZ_BYTES(query_hca_vport_gid_in);
 int out_sz = MLX5_ST_SZ_BYTES(query_hca_vport_gid_out);
 int is_group_manager;
 void *out = ((void*)0);
 void *in = ((void*)0);
 union ib_gid *tmp;
 int tbsz;
 int nout;
 int err;

 is_group_manager = MLX5_CAP_GEN(dev, vport_group_manager);
 tbsz = mlx5_get_gid_table_len(MLX5_CAP_GEN(dev, gid_table_size));

 if (gid_index > tbsz && gid_index != 0xffff)
  return -EINVAL;

 if (gid_index == 0xffff)
  nout = tbsz;
 else
  nout = 1;

 out_sz += nout * sizeof(*gid);

 in = mlx5_vzalloc(in_sz);
 out = mlx5_vzalloc(out_sz);
 if (!in || !out) {
  err = -ENOMEM;
  goto out;
 }

 MLX5_SET(query_hca_vport_gid_in, in, opcode,
   MLX5_CMD_OP_QUERY_HCA_VPORT_GID);
 if (vport_num) {
  if (is_group_manager) {
   MLX5_SET(query_hca_vport_gid_in, in, vport_number,
     vport_num);
   MLX5_SET(query_hca_vport_gid_in, in, other_vport, 1);
  } else {
   err = -EPERM;
   goto out;
  }
 }

 MLX5_SET(query_hca_vport_gid_in, in, gid_index, gid_index);

 if (MLX5_CAP_GEN(dev, num_ports) == 2)
  MLX5_SET(query_hca_vport_gid_in, in, port_num, port_num);

 err = mlx5_cmd_exec(dev, in, in_sz, out, out_sz);
 if (err)
  goto out;

 tmp = (union ib_gid *)MLX5_ADDR_OF(query_hca_vport_gid_out, out, gid);
 gid->global.subnet_prefix = tmp->global.subnet_prefix;
 gid->global.interface_id = tmp->global.interface_id;

out:
 kvfree(in);
 kvfree(out);
 return err;
}
