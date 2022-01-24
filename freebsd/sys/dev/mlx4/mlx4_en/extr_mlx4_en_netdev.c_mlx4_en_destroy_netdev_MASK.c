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
struct net_device {int dummy; } ;
struct mlx4_en_priv {size_t port; int gone; struct mlx4_en_priv* tx_cq; struct mlx4_en_priv* tx_ring; int /*<<< orphan*/  conf_ctx; int /*<<< orphan*/ * conf_sysctl; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  service_task; int /*<<< orphan*/  stats_task; int /*<<< orphan*/  res; scalar_t__ allocated; scalar_t__ registered; int /*<<< orphan*/ * vlan_detach; int /*<<< orphan*/ * vlan_attach; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/ ** pndev; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

void FUNC16(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC13(dev);
	struct mlx4_en_dev *mdev = priv->mdev;

	FUNC3(DRV, priv, "Destroying netdev on port:%d\n", priv->port);

	/* don't allow more IOCTLs */
	priv->gone = 1;

	/* XXX wait a bit to allow IOCTL handlers to complete */
	FUNC14("W", hz);

	if (priv->vlan_attach != NULL)
		FUNC0(vlan_config, priv->vlan_attach);
	if (priv->vlan_detach != NULL)
		FUNC0(vlan_unconfig, priv->vlan_detach);

	FUNC11(&mdev->state_lock);
	FUNC9(dev);
	FUNC12(&mdev->state_lock);

	/* Unregister device - this will close the port if it was up */
	if (priv->registered)
		FUNC4(dev);

	if (priv->allocated)
		FUNC10(mdev->dev, &priv->res, MLX4_EN_PAGE_SIZE);

	FUNC2(&priv->stats_task);
	FUNC2(&priv->service_task);
	/* flush any pending task for this netdev */
	FUNC5(mdev->workqueue);
        FUNC1(&priv->watchdog_timer);

	/* Detach the netdev so tasks would not attempt to access it */
	FUNC11(&mdev->state_lock);
	mdev->pndev[priv->port] = NULL;
	FUNC12(&mdev->state_lock);


	FUNC8(priv);

	/* freeing the sysctl conf cannot be called from within mlx4_en_free_resources */
	if (priv->conf_sysctl != NULL)
		FUNC15(&priv->conf_ctx);

	FUNC7(priv->tx_ring);
	FUNC7(priv->tx_cq);

        FUNC7(priv);
        FUNC6(dev);

}