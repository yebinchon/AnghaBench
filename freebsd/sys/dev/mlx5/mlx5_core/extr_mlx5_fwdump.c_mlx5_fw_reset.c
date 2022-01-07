
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {TYPE_2__* pdev; } ;
typedef int device_t ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BUS_RESET_CHILD (int ,int ,int ) ;
 int DEVF_RESET_DETACH ;
 int Giant ;
 int MLX5_FRL_LEVEL3 ;
 int device_get_parent (int ) ;
 int mlx5_set_mfrl_reg (struct mlx5_core_dev*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mlx5_fw_reset(struct mlx5_core_dev *mdev)
{
 device_t dev, bus;
 int error;

 error = -mlx5_set_mfrl_reg(mdev, MLX5_FRL_LEVEL3);
 if (error == 0) {
  dev = mdev->pdev->dev.bsddev;
  mtx_lock(&Giant);
  bus = device_get_parent(dev);
  error = BUS_RESET_CHILD(device_get_parent(bus), bus,
      DEVF_RESET_DETACH);
  mtx_unlock(&Giant);
 }
 return (error);
}
