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
struct ipoib_dev_priv {int /*<<< orphan*/  flush_light; struct ifnet* dev; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct ifnet *dev;
	struct ipoib_dev_priv *priv;

	priv = arg;
	dev = priv->dev;
	if ((dev->if_drv_flags & IFF_DRV_RUNNING) == 0)
		FUNC0(priv);
	FUNC1(ipoib_workqueue, &priv->flush_light);
}