
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int init_egress_acl_root_ns (struct mlx5_core_dev*) ;
 int init_fdb_root_ns (struct mlx5_core_dev*) ;
 int init_ingress_acl_root_ns (struct mlx5_core_dev*) ;
 int init_root_ns (struct mlx5_core_dev*) ;
 int init_sniffer_rx_root_ns (struct mlx5_core_dev*) ;
 int init_sniffer_tx_root_ns (struct mlx5_core_dev*) ;
 int mlx5_cleanup_fs (struct mlx5_core_dev*) ;
 int nic_flow_table ;

int mlx5_init_fs(struct mlx5_core_dev *dev)
{
 int err;

 if (MLX5_CAP_GEN(dev, nic_flow_table)) {
  err = init_root_ns(dev);
  if (err)
   goto err;
 }

 err = init_fdb_root_ns(dev);
 if (err)
  goto err;

 err = init_egress_acl_root_ns(dev);
 if (err)
  goto err;

 err = init_ingress_acl_root_ns(dev);
 if (err)
  goto err;

 err = init_sniffer_tx_root_ns(dev);
 if (err)
  goto err;

 err = init_sniffer_rx_root_ns(dev);
 if (err)
  goto err;

 return 0;
err:
 mlx5_cleanup_fs(dev);
 return err;
}
