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
struct ipoib_dev_priv {int /*<<< orphan*/  mcast_task; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_MCAST_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  mcast_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct ipoib_dev_priv *priv)
{
	FUNC0(priv, "starting multicast thread flags 0x%lX\n",
	    priv->flags);

	FUNC1(&mcast_mutex);
	if (!FUNC4(IPOIB_MCAST_RUN, &priv->flags))
		FUNC3(ipoib_workqueue, &priv->mcast_task, 0);
	FUNC2(&mcast_mutex);

	return 0;
}