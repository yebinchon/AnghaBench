
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_mw {int pd; int type; int enabled; int key; } ;
struct TYPE_2__ {int flags; int bmme_flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_mw_type { ____Placeholder_mlx4_mw_type } mlx4_mw_type ;


 int ENOMEM ;
 int ENOTSUPP ;
 int MLX4_BMME_FLAG_TYPE_2_WIN ;
 int MLX4_DEV_CAP_FLAG_MEM_WINDOW ;
 int MLX4_MPT_DISABLED ;
 int MLX4_MW_TYPE_1 ;
 int MLX4_MW_TYPE_2 ;
 int hw_index_to_key (int) ;
 int mlx4_mpt_reserve (struct mlx4_dev*) ;

int mlx4_mw_alloc(struct mlx4_dev *dev, u32 pd, enum mlx4_mw_type type,
    struct mlx4_mw *mw)
{
 u32 index;

 if ((type == MLX4_MW_TYPE_1 &&
      !(dev->caps.flags & MLX4_DEV_CAP_FLAG_MEM_WINDOW)) ||
      (type == MLX4_MW_TYPE_2 &&
      !(dev->caps.bmme_flags & MLX4_BMME_FLAG_TYPE_2_WIN)))
  return -ENOTSUPP;

 index = mlx4_mpt_reserve(dev);
 if (index == -1)
  return -ENOMEM;

 mw->key = hw_index_to_key(index);
 mw->pd = pd;
 mw->type = type;
 mw->enabled = MLX4_MPT_DISABLED;

 return 0;
}
