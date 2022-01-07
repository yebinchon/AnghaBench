
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int permanent_address; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int ether_addr_copy (int *,int *) ;
 TYPE_1__ field_select ;
 int kvfree (void*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int modify_nic_vport_context_in ;
 int nic_vport_context ;
 int other_vport ;
 int permanent_address ;
 int vport_number ;

int mlx5_modify_nic_vport_mac_address(struct mlx5_core_dev *mdev,
          u16 vport, u8 *addr)
{
 void *in;
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 int err;
 void *nic_vport_ctx;
 u8 *perm_mac;

 in = mlx5_vzalloc(inlen);
 if (!in) {
  mlx5_core_warn(mdev, "failed to allocate inbox\n");
  return -ENOMEM;
 }

 MLX5_SET(modify_nic_vport_context_in, in,
   field_select.permanent_address, 1);
 MLX5_SET(modify_nic_vport_context_in, in, vport_number, vport);

 if (vport)
  MLX5_SET(modify_nic_vport_context_in, in, other_vport, 1);

 nic_vport_ctx = MLX5_ADDR_OF(modify_nic_vport_context_in,
         in, nic_vport_context);
 perm_mac = MLX5_ADDR_OF(nic_vport_context, nic_vport_ctx,
    permanent_address);

 ether_addr_copy(&perm_mac[2], addr);

 err = mlx5_modify_nic_vport_context(mdev, in, inlen);

 kvfree(in);

 return err;
}
