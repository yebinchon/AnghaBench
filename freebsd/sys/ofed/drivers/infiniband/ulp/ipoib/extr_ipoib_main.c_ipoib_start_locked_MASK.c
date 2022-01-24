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
struct mbuf {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,struct mbuf*) ; 

void
FUNC5(struct ifnet *dev, struct ipoib_dev_priv *priv)
{
	struct mbuf *mb;

	FUNC3(&priv->lock);

	while (!FUNC1(&dev->if_snd) &&
	    (dev->if_drv_flags & IFF_DRV_OACTIVE) == 0) {
		FUNC0(&dev->if_snd, mb);
		if (mb == NULL)
			break;
		FUNC2(dev, mb);
		FUNC4(priv, mb);
	}
}