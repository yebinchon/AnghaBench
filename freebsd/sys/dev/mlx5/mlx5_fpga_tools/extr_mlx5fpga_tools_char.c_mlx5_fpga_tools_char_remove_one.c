
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tools_dev {scalar_t__ char_device; int fdev; } ;
struct cdev {int si_name; } ;


 int destroy_dev (struct cdev*) ;
 int dev_err (int ,char*,int ) ;
 int mlx5_fpga_dev (int ) ;

void mlx5_fpga_tools_char_remove_one(struct mlx5_fpga_tools_dev *tdev)
{

 dev_err(mlx5_fpga_dev(tdev->fdev), "tools char device %s destroyed\n",
     ((struct cdev *)(tdev->char_device))->si_name);
 destroy_dev((struct cdev *)(tdev->char_device));
}
