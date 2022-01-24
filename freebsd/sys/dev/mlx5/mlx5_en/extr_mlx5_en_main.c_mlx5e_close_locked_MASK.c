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
struct mlx5e_priv {int /*<<< orphan*/  counter_set_id; int /*<<< orphan*/  mdev; int /*<<< orphan*/  ifp; int /*<<< orphan*/  state; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_ETH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC11(struct ifnet *ifp)
{
	struct mlx5e_priv *priv = ifp->if_softc;

	/* check if already closed */
	if (FUNC10(MLX5E_STATE_OPENED, &priv->state) == 0)
		return (0);

	FUNC0(MLX5E_STATE_OPENED, &priv->state);

	FUNC9(priv);
	FUNC8(priv);
	FUNC1(priv->ifp, LINK_STATE_DOWN);
	FUNC4(priv);
	FUNC6(priv);
	FUNC5(priv);
	FUNC3(priv);
	FUNC2(priv->mdev,
	    MLX5_INTERFACE_PROTOCOL_ETH, priv->counter_set_id);
	FUNC7(priv);

	return (0);
}