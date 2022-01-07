
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int ib_dev; int port; int devr; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int destroy_dev_resources (int *) ;
 int destroy_umrc_res (struct mlx5_ib_dev*) ;
 int ib_dealloc_device (int *) ;
 int ib_unregister_device (int *) ;
 int kfree (int ) ;
 int mlx5_disable_roce (struct mlx5_ib_dev*) ;
 int mlx5_ib_cleanup_congestion (struct mlx5_ib_dev*) ;
 int mlx5_ib_dealloc_q_counters (struct mlx5_ib_dev*) ;
 int mlx5_ib_odp_remove_one (struct mlx5_ib_dev*) ;
 int mlx5_ib_port_link_layer (int *,int) ;
 int mlx5_remove_roce_notifier (struct mlx5_ib_dev*) ;

__attribute__((used)) static void mlx5_ib_remove(struct mlx5_core_dev *mdev, void *context)
{
 struct mlx5_ib_dev *dev = context;
 enum rdma_link_layer ll = mlx5_ib_port_link_layer(&dev->ib_dev, 1);

 mlx5_ib_cleanup_congestion(dev);
 mlx5_remove_roce_notifier(dev);
 ib_unregister_device(&dev->ib_dev);
 mlx5_ib_dealloc_q_counters(dev);
 destroy_umrc_res(dev);
 mlx5_ib_odp_remove_one(dev);
 destroy_dev_resources(&dev->devr);
 if (ll == IB_LINK_LAYER_ETHERNET)
  mlx5_disable_roce(dev);
 kfree(dev->port);
 ib_dealloc_device(&dev->ib_dev);
}
