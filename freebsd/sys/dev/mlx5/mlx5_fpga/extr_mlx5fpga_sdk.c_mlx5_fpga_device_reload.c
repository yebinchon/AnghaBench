
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int fdev_state; int load_event; int state_lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int intf_state_mutex; int intf_state; } ;
typedef enum mlx5_fpga_image { ____Placeholder_mlx5_fpga_image } mlx5_fpga_image ;


 int EBUSY ;
 int ENODEV ;





 int MLX5_FPGA_CTRL_OPERATION_RESET ;
 int MLX5_FPGA_IMAGE_FACTORY ;
 int MLX5_FPGA_IMAGE_RELOAD ;
 int MLX5_FPGA_IMAGE_RESET ;
 int MLX5_FPGA_LOAD_TIMEOUT ;
 int MLX5_INTERFACE_STATE_UP ;
 int clear_bit (int ,int *) ;
 unsigned long jiffies ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_fpga_ctrl_op (struct mlx5_core_dev*,int ) ;
 int mlx5_fpga_device_reload_cmd (struct mlx5_fpga_device*) ;
 int mlx5_fpga_device_start (struct mlx5_core_dev*) ;
 int mlx5_fpga_device_stop (struct mlx5_core_dev*) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int) ;
 int mlx5_fpga_info (struct mlx5_fpga_device*,char*) ;
 int mlx5_fpga_load (struct mlx5_core_dev*,int) ;
 int mlx5_register_device (struct mlx5_core_dev*) ;
 int mlx5_unregister_device (struct mlx5_core_dev*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

int mlx5_fpga_device_reload(struct mlx5_fpga_device *fdev,
       enum mlx5_fpga_image image)
{
 struct mlx5_core_dev *mdev = fdev->mdev;
 unsigned long timeout;
 unsigned long flags;
 int err = 0;

 spin_lock_irqsave(&fdev->state_lock, flags);
 switch (fdev->fdev_state) {
 case 129:
  err = -ENODEV;
  break;
 case 130:
  err = -EBUSY;
  break;
 case 128:
 case 131:
 case 132:
  break;
 }
 spin_unlock_irqrestore(&fdev->state_lock, flags);
 if (err)
  return err;

 mutex_lock(&mdev->intf_state_mutex);

 if (image == MLX5_FPGA_IMAGE_RELOAD) {
  err = mlx5_fpga_device_reload_cmd(fdev);
  goto out;
 }

 clear_bit(MLX5_INTERFACE_STATE_UP, &mdev->intf_state);

 mlx5_unregister_device(mdev);

 mlx5_fpga_device_stop(mdev);

 fdev->fdev_state = 130;
 reinit_completion(&fdev->load_event);

 if (image <= MLX5_FPGA_IMAGE_FACTORY) {
  mlx5_fpga_info(fdev, "Loading from flash\n");
  err = mlx5_fpga_load(mdev, image);
  if (err) {
   mlx5_fpga_err(fdev, "Failed to request load: %d\n",
          err);
   goto out;
  }
 } else if (image == MLX5_FPGA_IMAGE_RESET) {
  mlx5_fpga_info(fdev, "Resetting\n");
  err = mlx5_fpga_ctrl_op(mdev, MLX5_FPGA_CTRL_OPERATION_RESET);
  if (err) {
   mlx5_fpga_err(fdev, "Failed to request reset: %d\n",
          err);
   goto out;
  }
 } else {
  mlx5_fpga_err(fdev, "Unknown command: %d\n",
         image);
  goto out;
 }

 timeout = jiffies + msecs_to_jiffies(MLX5_FPGA_LOAD_TIMEOUT);
 err = wait_for_completion_timeout(&fdev->load_event, timeout - jiffies);
 if (err < 0) {
  mlx5_fpga_err(fdev, "Failed waiting for FPGA load: %d\n", err);
  fdev->fdev_state = 131;
  goto out;
 }

 err = mlx5_fpga_device_start(mdev);
 if (err) {
  mlx5_core_err(mdev, "fpga device start failed %d\n", err);
  goto out;
 }

 if (err) {
  mlx5_core_err(mdev, "IPSec device start failed %d\n", err);
  goto err_fpga;
 }

 err = mlx5_register_device(mdev);
 if (err) {
  mlx5_core_err(mdev, "mlx5_register_device failed %d\n", err);
  fdev->fdev_state = 131;
  goto err_ipsec;
 }

 set_bit(MLX5_INTERFACE_STATE_UP, &mdev->intf_state);
 goto out;

err_ipsec:

err_fpga:
 mlx5_fpga_device_stop(mdev);
out:
 mutex_unlock(&mdev->intf_state_mutex);
 return err;
}
