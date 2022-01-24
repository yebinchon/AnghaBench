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
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  rx_mode_task; TYPE_1__* mdev; int /*<<< orphan*/  port_up; } ;
struct TYPE_2__ {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 struct mlx4_en_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC0(dev);

	if (!priv->port_up)
		return;

	FUNC1(priv->mdev->workqueue, &priv->rx_mode_task);
}