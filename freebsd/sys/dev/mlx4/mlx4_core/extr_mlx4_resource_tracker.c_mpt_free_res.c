
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_mpt {int key; } ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_MPT ;
 int RES_MPT_RESERVED ;


 int __mlx4_mpt_free_icm (struct mlx4_dev*,int) ;
 int __mlx4_mpt_release (struct mlx4_dev*,int) ;
 int get_param_l (int *) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_mpt**) ;
 int mlx4_release_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int mpt_mask (struct mlx4_dev*) ;
 int mr_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_mpt**) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;
 int rem_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;

__attribute__((used)) static int mpt_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
   u64 in_param)
{
 int err = -EINVAL;
 int index;
 int id;
 struct res_mpt *mpt;

 switch (op) {
 case 128:
  index = get_param_l(&in_param);
  id = index & mpt_mask(dev);
  err = get_res(dev, slave, id, RES_MPT, &mpt);
  if (err)
   break;
  index = mpt->key;
  put_res(dev, slave, id, RES_MPT);

  err = rem_res_range(dev, slave, id, 1, RES_MPT, 0);
  if (err)
   break;
  mlx4_release_resource(dev, slave, RES_MPT, 1, 0);
  __mlx4_mpt_release(dev, index);
  break;
 case 129:
  index = get_param_l(&in_param);
  id = index & mpt_mask(dev);
  err = mr_res_start_move_to(dev, slave, id,
        RES_MPT_RESERVED, &mpt);
  if (err)
   return err;

  __mlx4_mpt_free_icm(dev, mpt->key);
  res_end_move(dev, slave, RES_MPT, id);
  break;
 default:
  err = -EINVAL;
  break;
 }
 return err;
}
