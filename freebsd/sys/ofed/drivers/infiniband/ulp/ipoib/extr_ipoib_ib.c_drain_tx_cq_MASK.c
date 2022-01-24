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
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_timer; struct ifnet* dev; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 scalar_t__ FUNC0 (struct ipoib_dev_priv*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ipoib_dev_priv *priv)
{
	struct ifnet *dev = priv->dev;

	FUNC2(&priv->lock);
	while (FUNC0(priv, true))
		; /* nothing */

	if (dev->if_drv_flags & IFF_DRV_OACTIVE)
		FUNC1(&priv->poll_timer, jiffies + 1);

	FUNC3(&priv->lock);
}