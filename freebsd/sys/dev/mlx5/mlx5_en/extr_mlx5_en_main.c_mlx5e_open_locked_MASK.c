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
struct TYPE_2__ {scalar_t__ num_channels; } ;
struct mlx5e_priv {int /*<<< orphan*/  counter_set_id; int /*<<< orphan*/  mdev; int /*<<< orphan*/  state; struct ifnet* ifp; TYPE_1__ params; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_ETH ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,char*,scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_priv*) ; 
 int FUNC10 (struct mlx5e_priv*) ; 
 int FUNC11 (struct mlx5e_priv*) ; 
 int FUNC12 (struct mlx5e_priv*) ; 
 int FUNC13 (struct mlx5e_priv*) ; 
 int FUNC14 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC20(struct ifnet *ifp)
{
	struct mlx5e_priv *priv = ifp->if_softc;
	int err;
	u16 set_id;

	/* check if already opened */
	if (FUNC19(MLX5E_STATE_OPENED, &priv->state) != 0)
		return (0);

#ifdef RSS
	if (rss_getnumbuckets() > priv->params.num_channels) {
		mlx5_en_info(ifp,
		    "NOTE: There are more RSS buckets(%u) than channels(%u) available\n",
		    rss_getnumbuckets(), priv->params.num_channels);
	}
#endif
	err = FUNC14(priv);
	if (err) {
		FUNC0(ifp, "mlx5e_open_tises failed, %d\n", err);
		return (err);
	}
	err = FUNC2(priv->mdev,
	    MLX5_INTERFACE_PROTOCOL_ETH, &set_id);
	if (err) {
		FUNC0(priv->ifp,
		    "mlx5_vport_alloc_q_counter failed: %d\n", err);
		goto err_close_tises;
	}
	/* store counter set ID */
	priv->counter_set_id = set_id;

	err = FUNC10(priv);
	if (err) {
		FUNC0(ifp,
		    "mlx5e_open_channels failed, %d\n", err);
		goto err_dalloc_q_counter;
	}
	err = FUNC12(priv);
	if (err) {
		FUNC0(ifp, "mlx5e_open_rqt failed, %d\n", err);
		goto err_close_channels;
	}
	err = FUNC13(priv);
	if (err) {
		FUNC0(ifp, "mlx5e_open_tir failed, %d\n", err);
		goto err_close_rqls;
	}
	err = FUNC11(priv);
	if (err) {
		FUNC0(ifp,
		    "mlx5e_open_flow_table failed, %d\n", err);
		goto err_close_tirs;
	}
	err = FUNC4(priv);
	if (err) {
		FUNC0(ifp,
		    "mlx5e_add_all_vlan_rules failed, %d\n", err);
		goto err_close_flow_table;
	}
	FUNC18(MLX5E_STATE_OPENED, &priv->state);

	FUNC16(priv);
	FUNC15(priv);

	return (0);

err_close_flow_table:
	FUNC6(priv);

err_close_tirs:
	FUNC8(priv);

err_close_rqls:
	FUNC7(priv);

err_close_channels:
	FUNC5(priv);

err_dalloc_q_counter:
	FUNC3(priv->mdev,
	    MLX5_INTERFACE_PROTOCOL_ETH, priv->counter_set_id);

err_close_tises:
	FUNC9(priv);

	return (err);
}