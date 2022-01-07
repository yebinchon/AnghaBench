
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int permanent_address; } ;
struct TYPE_4__ {int mac_addr_47_32; } ;
struct TYPE_5__ {TYPE_1__ permanent_address; } ;


 int ENOMEM ;
 scalar_t__ MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int ether_addr_copy (int *,int *) ;
 TYPE_3__ field_select ;
 int kvfree (void*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int modify_nic_vport_context_in ;
 TYPE_2__ nic_vport_context ;
 int opcode ;
 int other_vport ;
 int vport_number ;

int mlx5_set_nic_vport_permanent_mac(struct mlx5_core_dev *mdev, int vport,
         u8 *addr)
{
 void *in;
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 u8 *mac_ptr;
 int err;

 in = mlx5_vzalloc(inlen);
 if (!in) {
  mlx5_core_warn(mdev, "failed to allocate inbox\n");
  return -ENOMEM;
 }

 MLX5_SET(modify_nic_vport_context_in, in,
   opcode, MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT);
 MLX5_SET(modify_nic_vport_context_in, in, vport_number, vport);
 MLX5_SET(modify_nic_vport_context_in, in, other_vport, 1);
 MLX5_SET(modify_nic_vport_context_in, in,
   field_select.permanent_address, 1);
 mac_ptr = (u8 *)MLX5_ADDR_OF(modify_nic_vport_context_in, in,
  nic_vport_context.permanent_address.mac_addr_47_32);
 ether_addr_copy(mac_ptr, addr);

 err = mlx5_modify_nic_vport_context(mdev, in, inlen);

 kvfree(in);

 return err;
}
