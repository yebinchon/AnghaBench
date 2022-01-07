
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_MTT ;
 int RES_OP_RESERVE_AND_MAP ;
 int __mlx4_free_mtt_range (struct mlx4_dev*,int,int) ;
 int get_param_h (int *) ;
 int get_param_l (int *) ;
 int mlx4_release_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int rem_res_range (struct mlx4_dev*,int,int,int,int ,int) ;

__attribute__((used)) static int mtt_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
   u64 in_param, u64 *out_param)
{
 int err = -EINVAL;
 int base;
 int order;

 if (op != RES_OP_RESERVE_AND_MAP)
  return err;

 base = get_param_l(&in_param);
 order = get_param_h(&in_param);
 err = rem_res_range(dev, slave, base, 1, RES_MTT, order);
 if (!err) {
  mlx4_release_resource(dev, slave, RES_MTT, 1 << order, 0);
  __mlx4_free_mtt_range(dev, base, order);
 }
 return err;
}
