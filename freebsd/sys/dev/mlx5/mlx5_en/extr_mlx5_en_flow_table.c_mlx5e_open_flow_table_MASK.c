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
struct TYPE_2__ {int /*<<< orphan*/  ns; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; TYPE_1__ fts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_priv*) ; 
 int FUNC2 (struct mlx5e_priv*) ; 
 int FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 

int
FUNC6(struct mlx5e_priv *priv)
{
	int err;

	priv->fts.ns = FUNC0(priv->mdev,
					       MLX5_FLOW_NAMESPACE_KERNEL);

	err = FUNC3(priv);
	if (err)
		return (err);

	err = FUNC2(priv);
	if (err)
		goto err_destroy_vlan_flow_table;

	err = FUNC1(priv);
	if (err)
		goto err_destroy_main_flow_table;

	return (0);

err_destroy_main_flow_table:
	FUNC4(priv);
err_destroy_vlan_flow_table:
	FUNC5(priv);

	return (err);
}