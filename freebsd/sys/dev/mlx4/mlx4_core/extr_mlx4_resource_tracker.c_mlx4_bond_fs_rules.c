
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int mlx4_mirror_fs_rules (struct mlx4_dev*,int) ;

int mlx4_bond_fs_rules(struct mlx4_dev *dev)
{
 return mlx4_mirror_fs_rules(dev, 1);
}
