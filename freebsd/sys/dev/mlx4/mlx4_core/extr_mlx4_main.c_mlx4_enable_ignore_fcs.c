
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags2; int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_DEV_CAP_FLAG2_IGNORE_FCS ;
 int MLX4_DEV_CAP_FLAG_FCS_KEEP ;
 int mlx4_dbg (struct mlx4_dev*,char*) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;

__attribute__((used)) static inline void mlx4_enable_ignore_fcs(struct mlx4_dev *dev)
{
 if (!(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_IGNORE_FCS))
  return;

 if (mlx4_is_mfunc(dev)) {
  mlx4_dbg(dev, "SRIOV mode - Disabling Ignore FCS");
  dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_IGNORE_FCS;
  return;
 }

 if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_FCS_KEEP)) {
  mlx4_dbg(dev,
    "Keep FCS is not supported - Disabling Ignore FCS");
  dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_IGNORE_FCS;
  return;
 }
}
