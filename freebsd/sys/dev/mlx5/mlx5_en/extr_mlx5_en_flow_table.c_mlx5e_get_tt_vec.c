
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_eth_addr_info {int addr; } ;






 int MLX5E_TT_ANY ;
 int MLX5E_TT_IPV4 ;
 int MLX5E_TT_IPV4_TCP ;
 int MLX5E_TT_IPV4_UDP ;
 int MLX5E_TT_IPV6 ;
 int MLX5E_TT_IPV6_TCP ;
 int MLX5E_TT_IPV6_UDP ;

 int mlx5e_get_eth_addr_type (int ) ;

__attribute__((used)) static u32
mlx5e_get_tt_vec(struct mlx5e_eth_addr_info *ai, int type)
{
 int eth_addr_type;
 u32 ret;

 switch (type) {
 case 131:
  eth_addr_type = mlx5e_get_eth_addr_type(ai->addr);
  switch (eth_addr_type) {
  case 128:
   ret =
       (1 << MLX5E_TT_IPV4_TCP) |
       (1 << MLX5E_TT_IPV6_TCP) |
       (1 << MLX5E_TT_IPV4_UDP) |
       (1 << MLX5E_TT_IPV6_UDP) |
       (1 << MLX5E_TT_IPV4) |
       (1 << MLX5E_TT_IPV6) |
       (1 << MLX5E_TT_ANY) |
       0;
   break;

  case 130:
   ret =
       (1 << MLX5E_TT_IPV4_UDP) |
       (1 << MLX5E_TT_IPV4) |
       0;
   break;

  case 129:
   ret =
       (1 << MLX5E_TT_IPV6_UDP) |
       (1 << MLX5E_TT_IPV6) |
       0;
   break;

  default:
   ret =
       (1 << MLX5E_TT_ANY) |
       0;
   break;
  }
  break;

 case 132:
  ret =
      (1 << MLX5E_TT_IPV4_UDP) |
      (1 << MLX5E_TT_IPV6_UDP) |
      (1 << MLX5E_TT_IPV4) |
      (1 << MLX5E_TT_IPV6) |
      (1 << MLX5E_TT_ANY) |
      0;
  break;

 default:
  ret =
      (1 << MLX5E_TT_IPV4_TCP) |
      (1 << MLX5E_TT_IPV6_TCP) |
      (1 << MLX5E_TT_IPV4_UDP) |
      (1 << MLX5E_TT_IPV6_UDP) |
      (1 << MLX5E_TT_IPV4) |
      (1 << MLX5E_TT_IPV6) |
      (1 << MLX5E_TT_ANY) |
      0;
  break;
 }

 return (ret);
}
