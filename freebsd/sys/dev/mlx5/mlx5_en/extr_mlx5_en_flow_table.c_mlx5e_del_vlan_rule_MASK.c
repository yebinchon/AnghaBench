#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct TYPE_2__ {int /*<<< orphan*/ ** active_vlans_ft_rule; int /*<<< orphan*/ * any_svlan_ft_rule; int /*<<< orphan*/ * any_cvlan_ft_rule; int /*<<< orphan*/ * untagged_ft_rule; } ;
struct mlx5e_priv {TYPE_1__ vlan; } ;
typedef  enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;

/* Variables and functions */
#define  MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID 131 
#define  MLX5E_VLAN_RULE_TYPE_ANY_STAG_VID 130 
#define  MLX5E_VLAN_RULE_TYPE_MATCH_VID 129 
#define  MLX5E_VLAN_RULE_TYPE_UNTAGGED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 

__attribute__((used)) static void
FUNC2(struct mlx5e_priv *priv,
    enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
	switch (rule_type) {
	case MLX5E_VLAN_RULE_TYPE_UNTAGGED:
		if (priv->vlan.untagged_ft_rule) {
			FUNC0(priv->vlan.untagged_ft_rule);
			priv->vlan.untagged_ft_rule = NULL;
		}
		break;
	case MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID:
		if (priv->vlan.any_cvlan_ft_rule) {
			FUNC0(priv->vlan.any_cvlan_ft_rule);
			priv->vlan.any_cvlan_ft_rule = NULL;
		}
		break;
	case MLX5E_VLAN_RULE_TYPE_ANY_STAG_VID:
		if (priv->vlan.any_svlan_ft_rule) {
			FUNC0(priv->vlan.any_svlan_ft_rule);
			priv->vlan.any_svlan_ft_rule = NULL;
		}
		break;
	case MLX5E_VLAN_RULE_TYPE_MATCH_VID:
		if (priv->vlan.active_vlans_ft_rule[vid]) {
			FUNC0(priv->vlan.active_vlans_ft_rule[vid]);
			priv->vlan.active_vlans_ft_rule[vid] = NULL;
		}
		FUNC1(priv);
		break;
	default:
		break;
	}
}