
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int fdev_state; int mdev; int state_lock; } ;
typedef enum mlx5_fpga_connect { ____Placeholder_mlx5_fpga_connect } mlx5_fpga_connect ;


 int ENODEV ;





 int mlx5_fpga_ctrl_connect (int ,int*) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mlx5_fpga_connectdisconnect(struct mlx5_fpga_device *fdev,
    enum mlx5_fpga_connect *connect)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&fdev->state_lock, flags);
 switch (fdev->fdev_state) {
 case 129:
  spin_unlock_irqrestore(&fdev->state_lock, flags);
  return -ENODEV;
 case 130:
 case 128:
 case 131:
 case 132:
  break;
 }
 spin_unlock_irqrestore(&fdev->state_lock, flags);

 err = mlx5_fpga_ctrl_connect(fdev->mdev, connect);
 if (err)
  mlx5_fpga_err(fdev, "Failed to connect/disconnect: %d\n", err);
 return err;
}
