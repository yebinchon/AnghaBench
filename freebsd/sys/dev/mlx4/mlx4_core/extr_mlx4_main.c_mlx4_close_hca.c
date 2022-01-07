
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int hw_ctx; } ;


 int mlx4_CLOSE_HCA (struct mlx4_dev*,int ) ;
 int mlx4_free_icms (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_slave_exit (struct mlx4_dev*) ;
 int sysctl_ctx_free (int *) ;
 int unmap_bf_area (struct mlx4_dev*) ;
 int unmap_internal_clock (struct mlx4_dev*) ;

__attribute__((used)) static void mlx4_close_hca(struct mlx4_dev *dev)
{
 sysctl_ctx_free(&dev->hw_ctx);
 unmap_internal_clock(dev);
 unmap_bf_area(dev);
 if (mlx4_is_slave(dev))
  mlx4_slave_exit(dev);
 else {
  mlx4_CLOSE_HCA(dev, 0);
  mlx4_free_icms(dev);
 }
}
