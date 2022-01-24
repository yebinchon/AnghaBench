#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID ; 
 int /*<<< orphan*/  MLX5E_VLAN_RULE_TYPE_ANY_STAG_VID ; 
 int FUNC0 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mlx5e_priv *priv)
{
	int err;

	err = FUNC0(priv, MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID, 0);
	if (err)
		return (err);

	err = FUNC0(priv, MLX5E_VLAN_RULE_TYPE_ANY_STAG_VID, 0);
	if (err)
		FUNC1(priv, MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID, 0);

	return (err);
}