
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filter_disabled; } ;
struct mlx5e_priv {int state; TYPE_2__* ifp; TYPE_1__ vlan; } ;
struct TYPE_4__ {int if_flags; } ;


 int IFF_PROMISC ;
 int MLX5E_STATE_OPENED ;
 int mlx5e_del_any_vid_rules (struct mlx5e_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

void
mlx5e_enable_vlan_filter(struct mlx5e_priv *priv)
{
 if (priv->vlan.filter_disabled) {
  priv->vlan.filter_disabled = 0;
  if (priv->ifp->if_flags & IFF_PROMISC)
   return;
  if (test_bit(MLX5E_STATE_OPENED, &priv->state))
   mlx5e_del_any_vid_rules(priv);
 }
}
