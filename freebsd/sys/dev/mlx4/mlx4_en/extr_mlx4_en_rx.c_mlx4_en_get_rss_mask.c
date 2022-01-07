
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_en_priv {TYPE_2__* mdev; } ;
struct TYPE_3__ {scalar_t__ udp_rss; } ;
struct TYPE_4__ {TYPE_1__ profile; } ;


 int MLX4_RSS_IPV4 ;
 int MLX4_RSS_IPV6 ;
 int MLX4_RSS_TCP_IPV4 ;
 int MLX4_RSS_TCP_IPV6 ;
 int MLX4_RSS_UDP_IPV4 ;
 int MLX4_RSS_UDP_IPV6 ;

u8 mlx4_en_get_rss_mask(struct mlx4_en_priv *priv)
{
 u8 rss_mask = (MLX4_RSS_IPV4 | MLX4_RSS_TCP_IPV4 | MLX4_RSS_IPV6 |
   MLX4_RSS_TCP_IPV6);

 if (priv->mdev->profile.udp_rss)
  rss_mask |= MLX4_RSS_UDP_IPV4 | MLX4_RSS_UDP_IPV6;
 return (rss_mask);
}
