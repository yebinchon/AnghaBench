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
struct ipoib_dev_priv {int mcast_mtu; int admin_mtu; int /*<<< orphan*/  flush_light; int /*<<< orphan*/  max_ib_mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*) ; 
 int FUNC4 (struct ipoib_dev_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,int) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC8(struct ipoib_dev_priv *priv, int new_mtu, bool propagate)
{
	int error, prev_admin_mtu;

	/* dev->if_mtu > 2K ==> connected mode */
	if (FUNC2(priv)) {
		if (new_mtu > FUNC0(FUNC3(priv)))
			return -EINVAL;

		if (new_mtu > priv->mcast_mtu)
			FUNC5(priv, "mtu > %d will cause multicast packet drops.\n",
				   priv->mcast_mtu);

		return (FUNC4(priv, new_mtu, propagate));
	}

	if (new_mtu > FUNC1(priv->max_ib_mtu))
		return -EINVAL;

	prev_admin_mtu = priv->admin_mtu;
	priv->admin_mtu = new_mtu;
	error = FUNC4(priv, FUNC6(priv->mcast_mtu,
	    priv->admin_mtu), propagate);
	if (error == 0) {
		/* check for MTU change to avoid infinite loop */
		if (prev_admin_mtu != new_mtu)
			FUNC7(ipoib_workqueue, &priv->flush_light);
	} else
		priv->admin_mtu = prev_admin_mtu;
	return (error);
}