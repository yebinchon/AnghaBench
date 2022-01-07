
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int trans; } ;


 int kfree (int ) ;

void mlx5_fpga_trans_device_cleanup(struct mlx5_fpga_device *fdev)
{
 kfree(fdev->trans);
}
