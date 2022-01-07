
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_dev {int num_slaves; TYPE_1__* persist; } ;
struct TYPE_2__ {int num_vfs; } ;


 int EINVAL ;
 int mlx4_err (struct mlx4_dev*,char*,int,int ) ;

int mlx4_get_vf_indx(struct mlx4_dev *dev, int slave)
{
 if (slave < 1 || slave > dev->persist->num_vfs) {
  mlx4_err(dev,
    "Bad slave number:%d (number of activated slaves: %lu)\n",
    slave, dev->num_slaves);
  return -EINVAL;
 }
 return slave - 1;
}
