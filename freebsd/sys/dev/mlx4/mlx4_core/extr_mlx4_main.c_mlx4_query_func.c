
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_func {int rsvd_uars; int rsvd_eqs; int max_eq; } ;
struct mlx4_dev_cap {int reserved_uars; int reserved_eqs; int max_eqs; } ;
struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_DEV_CAP_FLAG2_SYS_EQS ;
 int MLX4_QUERY_FUNC_NUM_SYS_EQS ;
 int mlx4_QUERY_FUNC (struct mlx4_dev*,struct mlx4_func*,int ) ;
 int mlx4_err (struct mlx4_dev*,char*) ;

__attribute__((used)) static int mlx4_query_func(struct mlx4_dev *dev, struct mlx4_dev_cap *dev_cap)
{
 int err = 0;
 struct mlx4_func func;

 if (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) {
  err = mlx4_QUERY_FUNC(dev, &func, 0);
  if (err) {
   mlx4_err(dev, "QUERY_DEV_CAP command failed, aborting.\n");
   return err;
  }
  dev_cap->max_eqs = func.max_eq;
  dev_cap->reserved_eqs = func.rsvd_eqs;
  dev_cap->reserved_uars = func.rsvd_uars;
  err |= MLX4_QUERY_FUNC_NUM_SYS_EQS;
 }
 return err;
}
