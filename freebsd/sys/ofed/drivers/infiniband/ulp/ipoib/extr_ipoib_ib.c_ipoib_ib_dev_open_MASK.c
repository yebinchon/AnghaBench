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
struct ipoib_dev_priv {int pkey; int /*<<< orphan*/  flags; int /*<<< orphan*/  ah_reap_task; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  IPOIB_STOP_REAPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,int) ; 
 int FUNC4 (struct ipoib_dev_priv*) ; 
 int FUNC5 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*,int) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct ipoib_dev_priv *priv)
{
	int ret;

	if (FUNC1(priv->ca, priv->port, priv->pkey, &priv->pkey_index)) {
		FUNC6(priv, "P_Key 0x%04x not found\n", priv->pkey);
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
		return -1;
	}
	FUNC8(IPOIB_PKEY_ASSIGNED, &priv->flags);

	ret = FUNC5(priv);
	if (ret) {
		FUNC6(priv, "ipoib_init_qp returned %d\n", ret);
		return -1;
	}

	ret = FUNC4(priv);
	if (ret) {
		FUNC6(priv, "ipoib_ib_post_receives returned %d\n", ret);
		FUNC3(priv, 1);
		return -1;
	}

	ret = FUNC2(priv);
	if (ret) {
		FUNC6(priv, "ipoib_cm_dev_open returned %d\n", ret);
		FUNC3(priv, 1);
		return -1;
	}

	FUNC0(IPOIB_STOP_REAPER, &priv->flags);
	FUNC7(ipoib_workqueue, &priv->ah_reap_task, HZ);

	FUNC8(IPOIB_FLAG_INITIALIZED, &priv->flags);

	return 0;
}