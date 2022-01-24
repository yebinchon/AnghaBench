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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  mcast_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ipoib_dev_priv *priv, int flush)
{

	FUNC3(priv, "stopping multicast thread\n");

	FUNC4(&mcast_mutex);
	FUNC1(IPOIB_MCAST_RUN, &priv->flags);
	FUNC0(&priv->mcast_task);
	FUNC5(&mcast_mutex);

	if (flush)
		FUNC2(ipoib_workqueue);

	return 0;
}