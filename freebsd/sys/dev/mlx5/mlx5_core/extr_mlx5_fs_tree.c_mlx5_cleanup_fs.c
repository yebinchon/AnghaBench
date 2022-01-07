
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int esw_ingress_root_ns; int esw_egress_root_ns; int fdb_root_ns; int sniffer_tx_root_ns; int sniffer_rx_root_ns; } ;


 int cleanup_root_ns (struct mlx5_core_dev*) ;
 int cleanup_single_prio_root_ns (struct mlx5_core_dev*,int ) ;

void mlx5_cleanup_fs(struct mlx5_core_dev *dev)
{
 cleanup_root_ns(dev);
 cleanup_single_prio_root_ns(dev, dev->sniffer_rx_root_ns);
 cleanup_single_prio_root_ns(dev, dev->sniffer_tx_root_ns);
 cleanup_single_prio_root_ns(dev, dev->fdb_root_ns);
 cleanup_single_prio_root_ns(dev, dev->esw_egress_root_ns);
 cleanup_single_prio_root_ns(dev, dev->esw_ingress_root_ns);
}
