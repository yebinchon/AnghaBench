
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;
struct mlx5e_eth_addr_hash_node {int action; unsigned int mpfs_index; int ai; } ;




 int MLX5E_ACTION_NONE ;
 int MLX5E_FULLMATCH ;
 int mlx5_mpfs_del_mac (int ,unsigned int) ;
 int mlx5e_add_eth_addr_rule (struct mlx5e_priv*,int *,int ) ;
 int mlx5e_del_eth_addr_from_flow_table (struct mlx5e_priv*,int *) ;
 int mlx5e_del_eth_addr_from_hash (struct mlx5e_eth_addr_hash_node*) ;

__attribute__((used)) static void
mlx5e_execute_action(struct mlx5e_priv *priv,
    struct mlx5e_eth_addr_hash_node *hn)
{
 switch (hn->action) {
 case 129:
  mlx5e_add_eth_addr_rule(priv, &hn->ai, MLX5E_FULLMATCH);
  hn->action = MLX5E_ACTION_NONE;
  break;

 case 128:
  mlx5e_del_eth_addr_from_flow_table(priv, &hn->ai);
  if (hn->mpfs_index != -1U)
   mlx5_mpfs_del_mac(priv->mdev, hn->mpfs_index);
  mlx5e_del_eth_addr_from_hash(hn);
  break;

 default:
  break;
 }
}
