#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tx_pauseframe_control; int rx_pauseframe_control; scalar_t__ tx_priority_flow_control; scalar_t__ rx_priority_flow_control; } ;
struct mlx5e_priv {TYPE_4__ params; int /*<<< orphan*/  ifp; int /*<<< orphan*/  sysctl_ifnet; int /*<<< orphan*/  sysctl_ctx; TYPE_3__* mdev; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int /*<<< orphan*/  CTLFLAG_RDTUN ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_U8 ; 
 int EINVAL ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  mlx5e_sysctl_rx_priority_flow_control ; 
 int /*<<< orphan*/  mlx5e_sysctl_tx_priority_flow_control ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC10(struct mlx5e_priv *priv)
{
#if (__FreeBSD_version < 1100000)
	char path[96];
#endif
	int error;

	/* enable pauseframes by default */
	priv->params.tx_pauseframe_control = 1;
	priv->params.rx_pauseframe_control = 1;

	/* disable ports flow control, PFC, by default */
	priv->params.tx_priority_flow_control = 0;
	priv->params.rx_priority_flow_control = 0;

#if (__FreeBSD_version < 1100000)
	/* compute path for sysctl */
	FUNC9(path, sizeof(path), "dev.mce.%d.tx_pauseframe_control",
	    FUNC6(priv->mdev->pdev->dev.bsddev));

	/* try to fetch tunable, if any */
	FUNC5(path, &priv->params.tx_pauseframe_control);

	/* compute path for sysctl */
	FUNC9(path, sizeof(path), "dev.mce.%d.rx_pauseframe_control",
	    FUNC6(priv->mdev->pdev->dev.bsddev));

	/* try to fetch tunable, if any */
	FUNC5(path, &priv->params.rx_pauseframe_control);
#endif

	/* register pauseframe SYSCTLs */
	FUNC2(&priv->sysctl_ctx, FUNC4(priv->sysctl_ifnet),
	    OID_AUTO, "tx_pauseframe_control", CTLFLAG_RDTUN,
	    &priv->params.tx_pauseframe_control, 0,
	    "Set to enable TX pause frames. Clear to disable.");

	FUNC2(&priv->sysctl_ctx, FUNC4(priv->sysctl_ifnet),
	    OID_AUTO, "rx_pauseframe_control", CTLFLAG_RDTUN,
	    &priv->params.rx_pauseframe_control, 0,
	    "Set to enable RX pause frames. Clear to disable.");

	/* register priority flow control, PFC, SYSCTLs */
	FUNC3(&priv->sysctl_ctx, FUNC4(priv->sysctl_ifnet),
	    OID_AUTO, "tx_priority_flow_control", CTLTYPE_U8 | CTLFLAG_RWTUN |
	    CTLFLAG_MPSAFE, priv, 0, &mlx5e_sysctl_tx_priority_flow_control, "CU",
	    "Set to enable TX ports flow control frames for priorities 0..7. Clear to disable.");

	FUNC3(&priv->sysctl_ctx, FUNC4(priv->sysctl_ifnet),
	    OID_AUTO, "rx_priority_flow_control", CTLTYPE_U8 | CTLFLAG_RWTUN |
	    CTLFLAG_MPSAFE, priv, 0, &mlx5e_sysctl_rx_priority_flow_control, "CU",
	    "Set to enable RX ports flow control frames for priorities 0..7. Clear to disable.");

	FUNC0(priv);

	/* range check */
	priv->params.tx_pauseframe_control =
	    priv->params.tx_pauseframe_control ? 1 : 0;
	priv->params.rx_pauseframe_control =
	    priv->params.rx_pauseframe_control ? 1 : 0;

	/* update firmware */
	error = FUNC8(priv);
	if (error == -EINVAL) {
		FUNC7(priv->ifp,
		    "Global pauseframes must be disabled before enabling PFC.\n");
		priv->params.rx_priority_flow_control = 0;
		priv->params.tx_priority_flow_control = 0;

		/* update firmware */
		(void) FUNC8(priv);
	}
	FUNC1(priv);
}