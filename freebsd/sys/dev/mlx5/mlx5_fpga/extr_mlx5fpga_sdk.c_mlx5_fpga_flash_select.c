
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int fdev_state; int last_admin_image; int mdev; int state_lock; } ;
typedef enum mlx5_fpga_image { ____Placeholder_mlx5_fpga_image } mlx5_fpga_image ;


 int ENODEV ;





 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int) ;
 int mlx5_fpga_image_select (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mlx5_fpga_flash_select(struct mlx5_fpga_device *fdev,
      enum mlx5_fpga_image image)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&fdev->state_lock, flags);
 switch (fdev->fdev_state) {
 case 129:
  spin_unlock_irqrestore(&fdev->state_lock, flags);
  return -ENODEV;
 case 132:
 case 130:
 case 128:
 case 131:
  break;
 }
 spin_unlock_irqrestore(&fdev->state_lock, flags);

 err = mlx5_fpga_image_select(fdev->mdev, image);
 if (err)
  mlx5_fpga_err(fdev, "Failed to select flash image: %d\n", err);
 else
  fdev->last_admin_image = image;
 return err;
}
