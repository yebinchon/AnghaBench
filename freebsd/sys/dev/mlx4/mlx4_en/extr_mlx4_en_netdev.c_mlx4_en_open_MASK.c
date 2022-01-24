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
struct mlx4_en_priv {int /*<<< orphan*/  port; struct net_device* dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  device_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void* arg)
{

        struct mlx4_en_priv *priv;
        struct mlx4_en_dev *mdev;
        struct net_device *dev;
        int err = 0;

        priv = arg;
        mdev = priv->mdev;
        dev = priv->dev;


	FUNC3(&mdev->state_lock);

	if (!mdev->device_up) {
		FUNC0(priv, "Cannot open - device down/disabled\n");
		goto out;
	}

	/* Reset HW statistics and SW counters */
	FUNC1(dev);

	err = FUNC2(dev);
	if (err)
		FUNC0(priv, "Failed starting port:%d\n", priv->port);

out:
	FUNC4(&mdev->state_lock);
	return;
}