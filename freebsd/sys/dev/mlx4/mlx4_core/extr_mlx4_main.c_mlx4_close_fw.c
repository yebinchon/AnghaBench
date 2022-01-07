
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int fw_icm; } ;
struct TYPE_4__ {TYPE_1__ fw; } ;


 int mlx4_UNMAP_FA (struct mlx4_dev*) ;
 int mlx4_free_icm (struct mlx4_dev*,int ,int ) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void mlx4_close_fw(struct mlx4_dev *dev)
{
 if (!mlx4_is_slave(dev)) {
  mlx4_UNMAP_FA(dev);
  mlx4_free_icm(dev, mlx4_priv(dev)->fw.fw_icm, 0);
 }
}
