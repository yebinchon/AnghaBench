
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_disabled; } ;
struct TYPE_5__ {int addr; } ;
struct mlx5e_eth_addr_db {int promisc_enabled; int allmulti_enabled; int broadcast_enabled; TYPE_2__ promisc; TYPE_2__ allmulti; TYPE_2__ broadcast; } ;
struct mlx5e_priv {TYPE_1__ vlan; struct ifnet* ifp; struct mlx5e_eth_addr_db eth_addr; int state; } ;
struct ifnet {int if_flags; int if_broadcastaddr; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MLX5E_ALLMULTI ;
 int MLX5E_FULLMATCH ;
 int MLX5E_PROMISC ;
 int MLX5E_STATE_OPENED ;
 int ether_addr_copy (int ,int ) ;
 int mlx5e_add_any_vid_rules (struct mlx5e_priv*) ;
 int mlx5e_add_eth_addr_rule (struct mlx5e_priv*,TYPE_2__*,int ) ;
 int mlx5e_del_any_vid_rules (struct mlx5e_priv*) ;
 int mlx5e_del_eth_addr_from_flow_table (struct mlx5e_priv*,TYPE_2__*) ;
 int mlx5e_handle_ifp_addr (struct mlx5e_priv*) ;
 int mlx5e_vport_context_update (struct mlx5e_priv*) ;
 int test_bit (int ,int *) ;

void
mlx5e_set_rx_mode_core(struct mlx5e_priv *priv)
{
 struct mlx5e_eth_addr_db *ea = &priv->eth_addr;
 struct ifnet *ndev = priv->ifp;

 bool rx_mode_enable = test_bit(MLX5E_STATE_OPENED, &priv->state);
 bool promisc_enabled = rx_mode_enable && (ndev->if_flags & IFF_PROMISC);
 bool allmulti_enabled = rx_mode_enable && (ndev->if_flags & IFF_ALLMULTI);
 bool broadcast_enabled = rx_mode_enable;

 bool enable_promisc = !ea->promisc_enabled && promisc_enabled;
 bool disable_promisc = ea->promisc_enabled && !promisc_enabled;
 bool enable_allmulti = !ea->allmulti_enabled && allmulti_enabled;
 bool disable_allmulti = ea->allmulti_enabled && !allmulti_enabled;
 bool enable_broadcast = !ea->broadcast_enabled && broadcast_enabled;
 bool disable_broadcast = ea->broadcast_enabled && !broadcast_enabled;


 ether_addr_copy(priv->eth_addr.broadcast.addr,
     priv->ifp->if_broadcastaddr);

 if (enable_promisc) {
  mlx5e_add_eth_addr_rule(priv, &ea->promisc, MLX5E_PROMISC);
  if (!priv->vlan.filter_disabled)
   mlx5e_add_any_vid_rules(priv);
 }
 if (enable_allmulti)
  mlx5e_add_eth_addr_rule(priv, &ea->allmulti, MLX5E_ALLMULTI);
 if (enable_broadcast)
  mlx5e_add_eth_addr_rule(priv, &ea->broadcast, MLX5E_FULLMATCH);

 mlx5e_handle_ifp_addr(priv);

 if (disable_broadcast)
  mlx5e_del_eth_addr_from_flow_table(priv, &ea->broadcast);
 if (disable_allmulti)
  mlx5e_del_eth_addr_from_flow_table(priv, &ea->allmulti);
 if (disable_promisc) {
  if (!priv->vlan.filter_disabled)
   mlx5e_del_any_vid_rules(priv);
  mlx5e_del_eth_addr_from_flow_table(priv, &ea->promisc);
 }

 ea->promisc_enabled = promisc_enabled;
 ea->allmulti_enabled = allmulti_enabled;
 ea->broadcast_enabled = broadcast_enabled;

 mlx5e_vport_context_update(priv);
}
