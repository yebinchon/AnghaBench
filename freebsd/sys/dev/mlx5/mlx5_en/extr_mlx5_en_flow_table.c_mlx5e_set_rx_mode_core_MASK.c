#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  filter_disabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct mlx5e_eth_addr_db {int promisc_enabled; int allmulti_enabled; int broadcast_enabled; TYPE_2__ promisc; TYPE_2__ allmulti; TYPE_2__ broadcast; } ;
struct mlx5e_priv {TYPE_1__ vlan; struct ifnet* ifp; struct mlx5e_eth_addr_db eth_addr; int /*<<< orphan*/  state; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_broadcastaddr; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MLX5E_ALLMULTI ; 
 int /*<<< orphan*/  MLX5E_FULLMATCH ; 
 int /*<<< orphan*/  MLX5E_PROMISC ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC8(struct mlx5e_priv *priv)
{
	struct mlx5e_eth_addr_db *ea = &priv->eth_addr;
	struct ifnet *ndev = priv->ifp;

	bool rx_mode_enable = FUNC7(MLX5E_STATE_OPENED, &priv->state);
	bool promisc_enabled = rx_mode_enable && (ndev->if_flags & IFF_PROMISC);
	bool allmulti_enabled = rx_mode_enable && (ndev->if_flags & IFF_ALLMULTI);
	bool broadcast_enabled = rx_mode_enable;

	bool enable_promisc = !ea->promisc_enabled && promisc_enabled;
	bool disable_promisc = ea->promisc_enabled && !promisc_enabled;
	bool enable_allmulti = !ea->allmulti_enabled && allmulti_enabled;
	bool disable_allmulti = ea->allmulti_enabled && !allmulti_enabled;
	bool enable_broadcast = !ea->broadcast_enabled && broadcast_enabled;
	bool disable_broadcast = ea->broadcast_enabled && !broadcast_enabled;

	/* update broadcast address */
	FUNC0(priv->eth_addr.broadcast.addr,
	    priv->ifp->if_broadcastaddr);

	if (enable_promisc) {
		FUNC2(priv, &ea->promisc, MLX5E_PROMISC);
		if (!priv->vlan.filter_disabled)
			FUNC1(priv);
	}
	if (enable_allmulti)
		FUNC2(priv, &ea->allmulti, MLX5E_ALLMULTI);
	if (enable_broadcast)
		FUNC2(priv, &ea->broadcast, MLX5E_FULLMATCH);

	FUNC5(priv);

	if (disable_broadcast)
		FUNC4(priv, &ea->broadcast);
	if (disable_allmulti)
		FUNC4(priv, &ea->allmulti);
	if (disable_promisc) {
		if (!priv->vlan.filter_disabled)
			FUNC3(priv);
		FUNC4(priv, &ea->promisc);
	}

	ea->promisc_enabled = promisc_enabled;
	ea->allmulti_enabled = allmulti_enabled;
	ea->broadcast_enabled = broadcast_enabled;

	FUNC6(priv);
}