
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static int mtu_to_ib_mtu(struct mlx5_core_dev *dev, int mtu)
{
 switch (mtu) {
 case 256: return 1;
 case 512: return 2;
 case 1024: return 3;
 case 2048: return 4;
 case 4096: return 5;
 default:
  mlx5_core_warn(dev, "invalid mtu\n");
  return -1;
 }
}
