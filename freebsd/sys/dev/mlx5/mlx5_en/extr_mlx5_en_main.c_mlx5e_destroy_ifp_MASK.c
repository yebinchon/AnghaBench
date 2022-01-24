#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_12__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_14__ {TYPE_5__ port_stats_debug; TYPE_4__ pport; TYPE_3__ vport; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_active_connections; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct mlx5e_priv {int gone; int /*<<< orphan*/  wq; int /*<<< orphan*/  cq_uar; int /*<<< orphan*/  mdev; int /*<<< orphan*/  pdn; int /*<<< orphan*/  tdn; int /*<<< orphan*/  mr; int /*<<< orphan*/  sysctl_ctx; TYPE_6__ stats; scalar_t__ sysctl_debug; int /*<<< orphan*/  media; int /*<<< orphan*/ * pfil; int /*<<< orphan*/ * vlan_detach; int /*<<< orphan*/ * vlan_attach; int /*<<< orphan*/  tstmp_clbr; int /*<<< orphan*/  watchdog; struct ifnet* ifp; TYPE_2__ rl; } ;
struct TYPE_15__ {int /*<<< orphan*/  num_comp_vectors; } ;
struct TYPE_16__ {TYPE_7__ eq_table; } ;
struct mlx5_core_dev {TYPE_8__ priv; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_MLX5EN ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

__attribute__((used)) static void
FUNC23(struct mlx5_core_dev *mdev, void *vpriv)
{
	struct mlx5e_priv *priv = vpriv;
	struct ifnet *ifp = priv->ifp;

	/* don't allow more IOCTLs */
	priv->gone = 1;

	/* XXX wait a bit to allow IOCTL handlers to complete */
	FUNC20("W", hz);

#ifdef RATELIMIT
	/*
	 * The kernel can have reference(s) via the m_snd_tag's into
	 * the ratelimit channels, and these must go away before
	 * detaching:
	 */
	while (READ_ONCE(priv->rl.stats.tx_active_connections) != 0) {
		mlx5_en_err(priv->ifp,
		    "Waiting for all ratelimit connections to terminate\n");
		pause("W", hz);
	}
#endif
	/* wait for all unlimited send tags to complete */
	FUNC18(priv, mdev->priv.eq_table.num_comp_vectors);

	/* stop watchdog timer */
	FUNC4(&priv->watchdog);

	FUNC4(&priv->tstmp_clbr);

	if (priv->vlan_attach != NULL)
		FUNC0(vlan_config, priv->vlan_attach);
	if (priv->vlan_detach != NULL)
		FUNC0(vlan_unconfig, priv->vlan_detach);

	/* make sure device gets closed */
	FUNC1(priv);
	FUNC15(ifp);
	FUNC2(priv);

	/* deregister pfil */
	if (priv->pfil != NULL) {
		FUNC21(priv->pfil);
		priv->pfil = NULL;
	}

	/* unregister device */
	FUNC9(&priv->media);
	FUNC5(ifp);

#ifdef RATELIMIT
	mlx5e_rl_cleanup(priv);
#endif
	/* destroy all remaining sysctl nodes */
	FUNC22(&priv->stats.vport.ctx);
	FUNC22(&priv->stats.pport.ctx);
	if (priv->sysctl_debug)
		FUNC22(&priv->stats.port_stats_debug.ctx);
	FUNC22(&priv->sysctl_ctx);

	FUNC11(priv->mdev, &priv->mr);
	FUNC12(priv->mdev, priv->tdn);
	FUNC10(priv->mdev, priv->pdn);
	FUNC14(priv->mdev, &priv->cq_uar);
	FUNC16(priv);
	FUNC6(priv->wq);
	FUNC17(priv, mdev->priv.eq_table.num_comp_vectors);
	FUNC8(ifp);
	FUNC7(priv, M_MLX5EN);
}