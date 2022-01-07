
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int ** active_vlans_ft_rule; int * any_svlan_ft_rule; int * any_cvlan_ft_rule; int * untagged_ft_rule; } ;
struct mlx5e_priv {TYPE_1__ vlan; } ;
typedef enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;






 int mlx5_del_flow_rule (int *) ;
 int mlx5e_vport_context_update_vlans (struct mlx5e_priv*) ;

__attribute__((used)) static void
mlx5e_del_vlan_rule(struct mlx5e_priv *priv,
    enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
 switch (rule_type) {
 case 128:
  if (priv->vlan.untagged_ft_rule) {
   mlx5_del_flow_rule(priv->vlan.untagged_ft_rule);
   priv->vlan.untagged_ft_rule = ((void*)0);
  }
  break;
 case 131:
  if (priv->vlan.any_cvlan_ft_rule) {
   mlx5_del_flow_rule(priv->vlan.any_cvlan_ft_rule);
   priv->vlan.any_cvlan_ft_rule = ((void*)0);
  }
  break;
 case 130:
  if (priv->vlan.any_svlan_ft_rule) {
   mlx5_del_flow_rule(priv->vlan.any_svlan_ft_rule);
   priv->vlan.any_svlan_ft_rule = ((void*)0);
  }
  break;
 case 129:
  if (priv->vlan.active_vlans_ft_rule[vid]) {
   mlx5_del_flow_rule(priv->vlan.active_vlans_ft_rule[vid]);
   priv->vlan.active_vlans_ft_rule[vid] = ((void*)0);
  }
  mlx5e_vport_context_update_vlans(priv);
  break;
 default:
  break;
 }
}
