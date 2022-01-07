
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int*,void*,int*) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY ;
 int MLX5_GET_PR (int*,void*,int*) ;
 int MLX5_SET (int*,void*,int,int) ;
 int MLX5_ST_SZ_BYTES (int*) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,void*,int,void*,int) ;
 int mlx5_to_sw_pkey_sz (int) ;
 int num_ports ;
 int opcode ;
 int pkey_table_size ;
 int* query_hca_vport_pkey_in ;
 int* query_hca_vport_pkey_out ;
 int vport_group_manager ;
 int vport_number ;

int mlx5_query_hca_vport_pkey(struct mlx5_core_dev *dev, u8 other_vport,
         u8 port_num, u16 vf_num, u16 pkey_index,
         u16 *pkey)
{
 int in_sz = MLX5_ST_SZ_BYTES(query_hca_vport_pkey_in);
 int out_sz = MLX5_ST_SZ_BYTES(query_hca_vport_pkey_out);
 int is_group_manager;
 void *out = ((void*)0);
 void *in = ((void*)0);
 void *pkarr;
 int nout;
 int tbsz;
 int err;
 int i;

 is_group_manager = MLX5_CAP_GEN(dev, vport_group_manager);

 tbsz = mlx5_to_sw_pkey_sz(MLX5_CAP_GEN(dev, pkey_table_size));
 if (pkey_index > tbsz && pkey_index != 0xffff)
  return -EINVAL;

 if (pkey_index == 0xffff)
  nout = tbsz;
 else
  nout = 1;

 out_sz += nout * MLX5_ST_SZ_BYTES(pkey);

 in = kzalloc(in_sz, GFP_KERNEL);
 out = kzalloc(out_sz, GFP_KERNEL);

 MLX5_SET(query_hca_vport_pkey_in, in, opcode,
   MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY);
 if (other_vport) {
  if (is_group_manager) {
   MLX5_SET(query_hca_vport_pkey_in, in, vport_number,
     vf_num);
   MLX5_SET(query_hca_vport_pkey_in, in, other_vport, 1);
  } else {
   err = -EPERM;
   goto out;
  }
 }
 MLX5_SET(query_hca_vport_pkey_in, in, pkey_index, pkey_index);

 if (MLX5_CAP_GEN(dev, num_ports) == 2)
  MLX5_SET(query_hca_vport_pkey_in, in, port_num, port_num);

 err = mlx5_cmd_exec(dev, in, in_sz, out, out_sz);
 if (err)
  goto out;

 pkarr = MLX5_ADDR_OF(query_hca_vport_pkey_out, out, pkey);
 for (i = 0; i < nout; i++, pkey++,
      pkarr += MLX5_ST_SZ_BYTES(pkey))
  *pkey = MLX5_GET_PR(pkey, pkarr, pkey);

out:
 kfree(in);
 kfree(out);
 return err;
}
