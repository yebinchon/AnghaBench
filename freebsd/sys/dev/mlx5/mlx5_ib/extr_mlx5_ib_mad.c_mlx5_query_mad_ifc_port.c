
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {TYPE_1__* port_caps; } ;
struct ib_smp {int* data; void* attr_mod; int attr_id; } ;
struct ib_port_attr {int lmc; int sm_sl; int state; int phys_state; int port_cap_flags; int gid_tbl_len; int max_msg_sz; int active_width; int active_speed; int max_mtu; int active_mtu; int subnet_timeout; int max_vl_num; int init_type_reply; void* qkey_viol_cntr; void* bad_pkey_cntr; int pkey_tbl_len; void* sm_lid; void* lid; } ;
struct ib_device {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int ext_port_cap; int pkey_table_len; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_PORT_EXTENDED_SPEEDS_SUP ;
 int IB_SMP_ATTR_PORT_INFO ;
 int MLX5_ATTR_EXTENDED_PORT_INFO ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO ;
 void* be16_to_cpup (int *) ;
 int be32_to_cpup (int *) ;
 void* cpu_to_be32 (int) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int log_max_msg ;
 int memset (struct ib_port_attr*,int ,int) ;
 int mlx5_MAD_IFC (struct mlx5_ib_dev*,int,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int num_ports ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

int mlx5_query_mad_ifc_port(struct ib_device *ibdev, u8 port,
       struct ib_port_attr *props)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev = dev->mdev;
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int ext_active_speed;
 int err = -ENOMEM;

 if (port < 1 || port > MLX5_CAP_GEN(mdev, num_ports)) {
  mlx5_ib_warn(dev, "invalid port number %d\n", port);
  return -EINVAL;
 }

 in_mad = kzalloc(sizeof(*in_mad), GFP_KERNEL);
 out_mad = kmalloc(sizeof(*out_mad), GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 memset(props, 0, sizeof(*props));

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_PORT_INFO;
 in_mad->attr_mod = cpu_to_be32(port);

 err = mlx5_MAD_IFC(dev, 1, 1, port, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err) {
  mlx5_ib_warn(dev, "err %d\n", err);
  goto out;
 }

 props->lid = be16_to_cpup((__be16 *)(out_mad->data + 16));
 props->lmc = out_mad->data[34] & 0x7;
 props->sm_lid = be16_to_cpup((__be16 *)(out_mad->data + 18));
 props->sm_sl = out_mad->data[36] & 0xf;
 props->state = out_mad->data[32] & 0xf;
 props->phys_state = out_mad->data[33] >> 4;
 props->port_cap_flags = be32_to_cpup((__be32 *)(out_mad->data + 20));
 props->gid_tbl_len = out_mad->data[50];
 props->max_msg_sz = 1 << MLX5_CAP_GEN(mdev, log_max_msg);
 props->pkey_tbl_len = mdev->port_caps[port - 1].pkey_table_len;
 props->bad_pkey_cntr = be16_to_cpup((__be16 *)(out_mad->data + 46));
 props->qkey_viol_cntr = be16_to_cpup((__be16 *)(out_mad->data + 48));
 props->active_width = out_mad->data[31] & 0xf;
 props->active_speed = out_mad->data[35] >> 4;
 props->max_mtu = out_mad->data[41] & 0xf;
 props->active_mtu = out_mad->data[36] >> 4;
 props->subnet_timeout = out_mad->data[51] & 0x1f;
 props->max_vl_num = out_mad->data[37] >> 4;
 props->init_type_reply = out_mad->data[41] >> 4;


 if (props->port_cap_flags & IB_PORT_EXTENDED_SPEEDS_SUP) {
  ext_active_speed = out_mad->data[62] >> 4;

  switch (ext_active_speed) {
  case 1:
   props->active_speed = 16;
   break;
  case 2:
   props->active_speed = 32;
   break;
  }
 }


 if (props->active_speed == 4) {
  if (mdev->port_caps[port - 1].ext_port_cap &
      MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO) {
   init_query_mad(in_mad);
   in_mad->attr_id = MLX5_ATTR_EXTENDED_PORT_INFO;
   in_mad->attr_mod = cpu_to_be32(port);

   err = mlx5_MAD_IFC(dev, 1, 1, port,
        ((void*)0), ((void*)0), in_mad, out_mad);
   if (err)
    goto out;


   if (out_mad->data[15] & 0x1)
    props->active_speed = 8;
  }
 }

out:
 kfree(in_mad);
 kfree(out_mad);

 return err;
}
