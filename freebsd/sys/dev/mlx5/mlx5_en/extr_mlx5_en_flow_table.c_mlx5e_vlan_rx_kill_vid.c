
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int active_vlans; } ;
struct mlx5e_priv {int state; TYPE_1__ vlan; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int MLX5E_STATE_OPENED ;
 int MLX5E_VLAN_RULE_TYPE_MATCH_VID ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int clear_bit (int ,int ) ;
 int mlx5e_del_vlan_rule (struct mlx5e_priv*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void
mlx5e_vlan_rx_kill_vid(void *arg, struct ifnet *ifp, u16 vid)
{
 struct mlx5e_priv *priv = arg;

 if (ifp != priv->ifp)
  return;

 PRIV_LOCK(priv);
 clear_bit(vid, priv->vlan.active_vlans);
 if (test_bit(MLX5E_STATE_OPENED, &priv->state))
  mlx5e_del_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_MATCH_VID, vid);
 PRIV_UNLOCK(priv);
}
