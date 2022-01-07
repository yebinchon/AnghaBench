
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_OP_RESERVE ;
 int RES_XRCD ;
 int __mlx4_xrcd_alloc (struct mlx4_dev*,int *) ;
 int __mlx4_xrcd_free (struct mlx4_dev*,int ) ;
 int add_res_range (struct mlx4_dev*,int,int ,int,int ,int ) ;
 int set_param_l (int *,int ) ;

__attribute__((used)) static int xrcdn_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
      u64 in_param, u64 *out_param)
{
 u32 xrcdn;
 int err;

 if (op != RES_OP_RESERVE)
  return -EINVAL;

 err = __mlx4_xrcd_alloc(dev, &xrcdn);
 if (err)
  return err;

 err = add_res_range(dev, slave, xrcdn, 1, RES_XRCD, 0);
 if (err)
  __mlx4_xrcd_free(dev, xrcdn);
 else
  set_param_l(out_param, xrcdn);

 return err;
}
