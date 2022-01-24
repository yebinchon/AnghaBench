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
struct net_device {int if_mtu; int if_drv_flags; } ;
struct mlx4_en_priv {int max_mtu; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  device_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int EPERM ; 
 int IFF_DRV_RUNNING ; 
 int MLX4_EN_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,int,...) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int new_mtu)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err = 0;

	FUNC0(DRV, priv, "Change MTU called - current:%u new:%u\n",
	       (unsigned)dev->if_mtu, (unsigned)new_mtu);

	if ((new_mtu < MLX4_EN_MIN_MTU) || (new_mtu > priv->max_mtu)) {
		FUNC1(priv, "Bad MTU size:%d, max %u.\n", new_mtu,
		    priv->max_mtu);
		return -EPERM;
	}
	FUNC4(&mdev->state_lock);
	dev->if_mtu = new_mtu;
	if (dev->if_drv_flags & IFF_DRV_RUNNING) {
		if (!mdev->device_up) {
			/* NIC is probably restarting - let watchdog task reset
			 *                          * the port */
			FUNC0(DRV, priv, "Change MTU called with card down!?\n");
		} else {
			FUNC3(dev);
			err = FUNC2(dev);
			if (err) {
				FUNC1(priv, "Failed restarting port:%d\n",
						priv->port);
				FUNC7(mdev->workqueue, &priv->watchdog_task);
			}
		}
	}
	FUNC5(&mdev->state_lock);
	return 0;
}