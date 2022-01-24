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
struct net_device {int dummy; } ;
struct mlx4_en_priv {int tx_ring_num; int rx_ring_num; TYPE_2__** rx_ring; TYPE_1__** tx_ring; int /*<<< orphan*/  vport_stats; int /*<<< orphan*/  port_stats; int /*<<< orphan*/  pkstats; int /*<<< orphan*/  pstats; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ csum_none; scalar_t__ csum_ok; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_3__ {scalar_t__ oversized_packets; scalar_t__ tx_csum; scalar_t__ packets; scalar_t__ bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct mlx4_en_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int i;

	if (!FUNC3(mdev->dev))
		if (FUNC2(mdev, priv->port, 1))
			FUNC0(HW, priv, "Failed dumping statistics\n");

	FUNC1(&priv->pstats, 0, sizeof(priv->pstats));
	FUNC1(&priv->pkstats, 0, sizeof(priv->pkstats));
	FUNC1(&priv->port_stats, 0, sizeof(priv->port_stats));
	FUNC1(&priv->vport_stats, 0, sizeof(priv->vport_stats));

	for (i = 0; i < priv->tx_ring_num; i++) {
		priv->tx_ring[i]->bytes = 0;
		priv->tx_ring[i]->packets = 0;
		priv->tx_ring[i]->tx_csum = 0;
		priv->tx_ring[i]->oversized_packets = 0;
	}
	for (i = 0; i < priv->rx_ring_num; i++) {
		priv->rx_ring[i]->bytes = 0;
		priv->rx_ring[i]->packets = 0;
		priv->rx_ring[i]->csum_ok = 0;
		priv->rx_ring[i]->csum_none = 0;
	}
}