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
struct ipoib_dev_priv {int /*<<< orphan*/  pkey_poll_task; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  IPOIB_PKEY_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkey_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct ipoib_dev_priv *priv)
{

	/* Look for the interface pkey value in the IB Port P_Key table and */
	/* set the interface pkey assigment flag                            */
	FUNC1(priv);

	/* P_Key value not assigned yet - start polling */
	if (!FUNC5(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
		FUNC2(&pkey_mutex);
		FUNC0(IPOIB_PKEY_STOP, &priv->flags);
		FUNC4(ipoib_workqueue,
				   &priv->pkey_poll_task,
				   HZ);
		FUNC3(&pkey_mutex);
		return 1;
	}

	return 0;
}