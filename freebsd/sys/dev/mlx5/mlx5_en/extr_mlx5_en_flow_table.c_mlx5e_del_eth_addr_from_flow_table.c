
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_eth_addr_info {int tt_vec; int * ft_rule; } ;


 int MLX5E_TT_ANY ;
 int MLX5E_TT_IPV4 ;
 int MLX5E_TT_IPV4_IPSEC_AH ;
 int MLX5E_TT_IPV4_IPSEC_ESP ;
 int MLX5E_TT_IPV4_TCP ;
 int MLX5E_TT_IPV4_UDP ;
 int MLX5E_TT_IPV6 ;
 int MLX5E_TT_IPV6_IPSEC_AH ;
 int MLX5E_TT_IPV6_IPSEC_ESP ;
 int MLX5E_TT_IPV6_TCP ;
 int MLX5E_TT_IPV6_UDP ;
 int mlx5_del_flow_rule (int ) ;

__attribute__((used)) static void
mlx5e_del_eth_addr_from_flow_table(struct mlx5e_priv *priv,
    struct mlx5e_eth_addr_info *ai)
{
 if (ai->tt_vec & (1 << MLX5E_TT_IPV6_IPSEC_ESP))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV6_IPSEC_ESP]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV4_IPSEC_ESP))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV4_IPSEC_ESP]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV6_IPSEC_AH))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV6_IPSEC_AH]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV4_IPSEC_AH))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV4_IPSEC_AH]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV6_TCP))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV6_TCP]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV4_TCP))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV4_TCP]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV6_UDP))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV6_UDP]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV4_UDP))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV4_UDP]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV6))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV6]);

 if (ai->tt_vec & (1 << MLX5E_TT_IPV4))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_IPV4]);

 if (ai->tt_vec & (1 << MLX5E_TT_ANY))
  mlx5_del_flow_rule(ai->ft_rule[MLX5E_TT_ANY]);


 ai->tt_vec = 0;
}
