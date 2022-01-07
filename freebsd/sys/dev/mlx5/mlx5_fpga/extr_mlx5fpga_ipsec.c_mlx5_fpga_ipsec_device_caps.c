
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int caps; } ;


 int MLX5_ACCEL_IPSEC_DEVICE ;
 int MLX5_ACCEL_IPSEC_ESP ;
 int MLX5_ACCEL_IPSEC_IPV6 ;
 int MLX5_ACCEL_IPSEC_LSO ;
 scalar_t__ MLX5_GET (int ,int ,int ) ;
 int esp ;
 int ipsec_extended_cap ;
 int ipv6 ;
 int lso ;
 scalar_t__ mlx5_fpga_is_ipsec_device (struct mlx5_core_dev*) ;

u32 mlx5_fpga_ipsec_device_caps(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;
 u32 ret = 0;

 if (mlx5_fpga_is_ipsec_device(mdev))
  ret |= MLX5_ACCEL_IPSEC_DEVICE;
 else
  return ret;

 if (!fdev->ipsec)
  return ret;

 if (MLX5_GET(ipsec_extended_cap, fdev->ipsec->caps, esp))
  ret |= MLX5_ACCEL_IPSEC_ESP;

 if (MLX5_GET(ipsec_extended_cap, fdev->ipsec->caps, ipv6))
  ret |= MLX5_ACCEL_IPSEC_IPV6;

 if (MLX5_GET(ipsec_extended_cap, fdev->ipsec->caps, lso))
  ret |= MLX5_ACCEL_IPSEC_LSO;

 return ret;
}
