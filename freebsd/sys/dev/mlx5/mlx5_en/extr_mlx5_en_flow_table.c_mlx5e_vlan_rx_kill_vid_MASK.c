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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  active_vlans; } ;
struct mlx5e_priv {int /*<<< orphan*/  state; TYPE_1__ vlan; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  MLX5E_VLAN_RULE_TYPE_MATCH_VID ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(void *arg, struct ifnet *ifp, u16 vid)
{
	struct mlx5e_priv *priv = arg;

	if (ifp != priv->ifp)
		return;

	FUNC0(priv);
	FUNC2(vid, priv->vlan.active_vlans);
	if (FUNC4(MLX5E_STATE_OPENED, &priv->state))
		FUNC3(priv, MLX5E_VLAN_RULE_TYPE_MATCH_VID, vid);
	FUNC1(priv);
}