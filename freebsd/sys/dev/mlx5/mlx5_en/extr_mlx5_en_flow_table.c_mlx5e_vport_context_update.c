
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_eth_addr_db {int promisc_enabled; int allmulti_enabled; } ;
struct mlx5e_priv {int mdev; struct mlx5e_eth_addr_db eth_addr; } ;


 int MLX5_NIC_VPORT_LIST_TYPE_MC ;
 int MLX5_NIC_VPORT_LIST_TYPE_UC ;
 int mlx5_modify_nic_vport_promisc (int ,int ,int ,int ) ;
 int mlx5e_vport_context_update_addr_list (struct mlx5e_priv*,int ) ;

__attribute__((used)) static void mlx5e_vport_context_update(struct mlx5e_priv *priv)
{
 struct mlx5e_eth_addr_db *ea = &priv->eth_addr;

 mlx5e_vport_context_update_addr_list(priv, MLX5_NIC_VPORT_LIST_TYPE_UC);
 mlx5e_vport_context_update_addr_list(priv, MLX5_NIC_VPORT_LIST_TYPE_MC);
 mlx5_modify_nic_vport_promisc(priv->mdev, 0,
          ea->allmulti_enabled,
          ea->promisc_enabled);
}
