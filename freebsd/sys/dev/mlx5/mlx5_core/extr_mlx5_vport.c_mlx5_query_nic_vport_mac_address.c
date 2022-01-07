
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int permanent_address; } ;


 int ENOMEM ;
 int * MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int ether_addr_copy (int *,int *) ;
 int kvfree (int *) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int) ;
 int * mlx5_vzalloc (int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_query_nic_vport_mac_address(struct mlx5_core_dev *mdev,
         u16 vport, u8 *addr)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);
 u8 *out_addr;
 int err;

 out = mlx5_vzalloc(outlen);
 if (!out)
  return -ENOMEM;

 out_addr = MLX5_ADDR_OF(query_nic_vport_context_out, out,
    nic_vport_context.permanent_address);

 err = mlx5_query_nic_vport_context(mdev, vport, out, outlen);
 if (err)
  goto out;

 ether_addr_copy(addr, &out_addr[2]);

out:
 kvfree(out);
 return err;
}
