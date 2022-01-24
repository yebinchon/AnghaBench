#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hw_mtu; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_priority_flow_control; } ;
struct mlx5e_priv {TYPE_2__ params_ethtool; TYPE_1__ params; } ;
struct ieee_pfc {int /*<<< orphan*/  pfc_en; } ;
typedef  int /*<<< orphan*/  pfc ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_PORT_BUFFER_PFC ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_pfc*,int) ; 
 int FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee_pfc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct mlx5e_priv *priv)
{
	struct ieee_pfc pfc;

	FUNC0(priv);
	FUNC1(&pfc, sizeof(pfc));
	pfc.pfc_en = priv->params.rx_priority_flow_control;
	return (-FUNC2(priv, MLX5E_PORT_BUFFER_PFC,
	    priv->params_ethtool.hw_mtu, &pfc, NULL, NULL));
}