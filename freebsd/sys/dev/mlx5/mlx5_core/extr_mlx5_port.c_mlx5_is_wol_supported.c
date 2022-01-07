
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_WOL_ARP ;
 int MLX5_WOL_BROADCAST ;
 int MLX5_WOL_MAGIC ;
 int MLX5_WOL_MULTICAST ;
 int MLX5_WOL_PHY_ACTIVITY ;
 int MLX5_WOL_SECURED_MAGIC ;
 int MLX5_WOL_UNICAST ;
 int wol_a ;
 int wol_b ;
 int wol_g ;
 int wol_m ;
 int wol_p ;
 int wol_s ;
 int wol_u ;

u8 mlx5_is_wol_supported(struct mlx5_core_dev *dev)
{
 u8 wol_supported = 0;

 if (MLX5_CAP_GEN(dev, wol_s))
  wol_supported |= MLX5_WOL_SECURED_MAGIC;
 if (MLX5_CAP_GEN(dev, wol_g))
  wol_supported |= MLX5_WOL_MAGIC;
 if (MLX5_CAP_GEN(dev, wol_a))
  wol_supported |= MLX5_WOL_ARP;
 if (MLX5_CAP_GEN(dev, wol_b))
  wol_supported |= MLX5_WOL_BROADCAST;
 if (MLX5_CAP_GEN(dev, wol_m))
  wol_supported |= MLX5_WOL_MULTICAST;
 if (MLX5_CAP_GEN(dev, wol_u))
  wol_supported |= MLX5_WOL_UNICAST;
 if (MLX5_CAP_GEN(dev, wol_p))
  wol_supported |= MLX5_WOL_PHY_ACTIVITY;

 return wol_supported;
}
