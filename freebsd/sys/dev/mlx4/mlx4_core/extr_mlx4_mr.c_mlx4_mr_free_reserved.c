
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_mr {scalar_t__ enabled; int mtt; int key; } ;
struct TYPE_2__ {int num_mpts; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 scalar_t__ MLX4_MPT_EN_HW ;
 scalar_t__ MLX4_MPT_EN_SW ;
 int key_to_hw_index (int ) ;
 int mlx4_HW2SW_MPT (struct mlx4_dev*,int *,int) ;
 int mlx4_mtt_cleanup (struct mlx4_dev*,int *) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;

__attribute__((used)) static int mlx4_mr_free_reserved(struct mlx4_dev *dev, struct mlx4_mr *mr)
{
 int err;

 if (mr->enabled == MLX4_MPT_EN_HW) {
  err = mlx4_HW2SW_MPT(dev, ((void*)0),
         key_to_hw_index(mr->key) &
         (dev->caps.num_mpts - 1));
  if (err) {
   mlx4_warn(dev, "HW2SW_MPT failed (%d), MR has MWs bound to it\n",
      err);
   return err;
  }

  mr->enabled = MLX4_MPT_EN_SW;
 }
 mlx4_mtt_cleanup(dev, &mr->mtt);

 return 0;
}
