
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tools_dev {int lock; struct mlx5_fpga_device* fdev; } ;
struct mlx5_fpga_device {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct mlx5_fpga_tools_dev*) ;
 struct mlx5_fpga_tools_dev* kzalloc (int,int ) ;
 int mlx5_fpga_tools_char_add_one (struct mlx5_fpga_tools_dev*) ;
 int sx_init (int *,char*) ;

struct mlx5_fpga_tools_dev *mlx5_fpga_tools_alloc(struct mlx5_fpga_device *fdev)
{
 int ret;
 struct mlx5_fpga_tools_dev *tdev;

 tdev = kzalloc(sizeof(*tdev), GFP_KERNEL);
 if (!tdev)
  goto out;

 tdev->fdev = fdev;
 sx_init(&tdev->lock, "mlx5fpgat");
 ret = mlx5_fpga_tools_char_add_one(tdev);
 if (ret)
  goto err_free;

 goto out;

err_free:
 kfree(tdev);
 tdev = ((void*)0);

out:
 return tdev;
}
