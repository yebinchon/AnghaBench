
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int IB_WIDTH_12X ;
 int IB_WIDTH_1X ;
 int IB_WIDTH_2X ;
 int IB_WIDTH_4X ;
 int IB_WIDTH_8X ;
 int MLX5_IB_WIDTH_12X ;
 int MLX5_IB_WIDTH_1X ;
 int MLX5_IB_WIDTH_2X ;
 int MLX5_IB_WIDTH_4X ;
 int MLX5_IB_WIDTH_8X ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int translate_active_width(struct ib_device *ibdev, u8 active_width,
      u8 *ib_width)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 int err = 0;

 if (active_width & MLX5_IB_WIDTH_1X) {
  *ib_width = IB_WIDTH_1X;
 } else if (active_width & MLX5_IB_WIDTH_2X) {
  *ib_width = IB_WIDTH_2X;
 } else if (active_width & MLX5_IB_WIDTH_4X) {
  *ib_width = IB_WIDTH_4X;
 } else if (active_width & MLX5_IB_WIDTH_8X) {
  *ib_width = IB_WIDTH_8X;
 } else if (active_width & MLX5_IB_WIDTH_12X) {
  *ib_width = IB_WIDTH_12X;
 } else {
  mlx5_ib_dbg(dev, "Invalid active_width %d\n",
       (int)active_width);
  err = -EINVAL;
 }

 return err;
}
