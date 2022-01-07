
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int alloc_res_qp_mask; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int EINVAL ;
 int GFP_KERNEL ;


 int RES_QP ;
 int RES_QP_MAPPED ;
 int __mlx4_qp_alloc_icm (struct mlx4_dev*,int,int ) ;
 int __mlx4_qp_release_range (struct mlx4_dev*,int,int) ;
 int __mlx4_qp_reserve_range (struct mlx4_dev*,int,int,int*,int) ;
 int add_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;
 int fw_reserved (struct mlx4_dev*,int) ;
 int get_param_h (int *) ;
 int get_param_l (int *) ;
 int mlx4_grant_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int mlx4_release_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int qp_res_start_move_to (struct mlx4_dev*,int,int,int ,int *,int) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;
 int set_param_l (int *,int) ;
 int valid_reserved (struct mlx4_dev*,int,int) ;

__attribute__((used)) static int qp_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
   u64 in_param, u64 *out_param)
{
 int err;
 int count;
 int align;
 int base;
 int qpn;
 u8 flags;

 switch (op) {
 case 128:
  count = get_param_l(&in_param) & 0xffffff;



  flags = (get_param_l(&in_param) >> 24) & dev->caps.alloc_res_qp_mask;
  align = get_param_h(&in_param);
  err = mlx4_grant_resource(dev, slave, RES_QP, count, 0);
  if (err)
   return err;

  err = __mlx4_qp_reserve_range(dev, count, align, &base, flags);
  if (err) {
   mlx4_release_resource(dev, slave, RES_QP, count, 0);
   return err;
  }

  err = add_res_range(dev, slave, base, count, RES_QP, 0);
  if (err) {
   mlx4_release_resource(dev, slave, RES_QP, count, 0);
   __mlx4_qp_release_range(dev, base, count);
   return err;
  }
  set_param_l(out_param, base);
  break;
 case 129:
  qpn = get_param_l(&in_param) & 0x7fffff;
  if (valid_reserved(dev, slave, qpn)) {
   err = add_res_range(dev, slave, qpn, 1, RES_QP, 0);
   if (err)
    return err;
  }

  err = qp_res_start_move_to(dev, slave, qpn, RES_QP_MAPPED,
        ((void*)0), 1);
  if (err)
   return err;

  if (!fw_reserved(dev, qpn)) {
   err = __mlx4_qp_alloc_icm(dev, qpn, GFP_KERNEL);
   if (err) {
    res_abort_move(dev, slave, RES_QP, qpn);
    return err;
   }
  }

  res_end_move(dev, slave, RES_QP, qpn);
  break;

 default:
  err = -EINVAL;
  break;
 }
 return err;
}
