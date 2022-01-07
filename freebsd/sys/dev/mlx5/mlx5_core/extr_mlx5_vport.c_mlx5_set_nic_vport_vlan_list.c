
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u8 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int addresses_list; } ;


 int ENOMEM ;
 int ENOSPC ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CAP_GEN_MAX (struct mlx5_core_dev*,int ) ;
 int MLX5_NIC_VPORT_LIST_TYPE_VLAN ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int allowed_list_size ;
 int allowed_list_type ;
 int * current_uc_mac_address ;
 TYPE_1__ field_select ;
 int kvfree (void*) ;
 int log_max_vlan_list ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int modify_nic_vport_context_in ;
 int nic_vport_context ;
 int other_vport ;
 int vlan ;
 int vlan_layout ;
 int vport_number ;

int mlx5_set_nic_vport_vlan_list(struct mlx5_core_dev *dev, u16 vport,
     u16 *vlan_list, int list_len)
{
 void *in, *ctx;
 int i, err;
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in)
  + MLX5_ST_SZ_BYTES(vlan_layout) * (int)list_len;

 int max_list_size = 1 << MLX5_CAP_GEN_MAX(dev, log_max_vlan_list);

 if (list_len > max_list_size) {
  mlx5_core_warn(dev, "Requested list size (%d) > (%d) max_list_size\n",
          list_len, max_list_size);
  return -ENOSPC;
 }

 in = mlx5_vzalloc(inlen);
 if (!in) {
  mlx5_core_warn(dev, "failed to allocate inbox\n");
  return -ENOMEM;
 }

 MLX5_SET(modify_nic_vport_context_in, in, vport_number, vport);
 if (vport)
  MLX5_SET(modify_nic_vport_context_in, in,
    other_vport, 1);
 MLX5_SET(modify_nic_vport_context_in, in,
   field_select.addresses_list, 1);

 ctx = MLX5_ADDR_OF(modify_nic_vport_context_in, in, nic_vport_context);

 MLX5_SET(nic_vport_context, ctx, allowed_list_type,
   MLX5_NIC_VPORT_LIST_TYPE_VLAN);
 MLX5_SET(nic_vport_context, ctx, allowed_list_size, list_len);

 for (i = 0; i < list_len; i++) {
  u8 *vlan_lout = MLX5_ADDR_OF(nic_vport_context, ctx,
      current_uc_mac_address[i]);
  MLX5_SET(vlan_layout, vlan_lout, vlan, vlan_list[i]);
 }

 err = mlx5_modify_nic_vport_context(dev, in, inlen);

 kvfree(in);
 return err;
}
