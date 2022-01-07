
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;


 int EINVAL ;
 int IB_RATE_2_5_GBPS ;
 int IB_RATE_600_GBPS ;
 int IB_RATE_PORT_CURRENT ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_STAT_RATE_OFFSET ;
 int stat_rate_support ;

__attribute__((used)) static int ib_rate_to_mlx5(struct mlx5_ib_dev *dev, u8 rate)
{
 if (rate == IB_RATE_PORT_CURRENT) {
  return 0;
 } else if (rate < IB_RATE_2_5_GBPS || rate > IB_RATE_600_GBPS) {
  return -EINVAL;
 } else {
  while (rate != IB_RATE_2_5_GBPS &&
         !(1 << (rate + MLX5_STAT_RATE_OFFSET) &
    MLX5_CAP_GEN(dev->mdev, stat_rate_support)))
   --rate;
 }

 return rate + MLX5_STAT_RATE_OFFSET;
}
