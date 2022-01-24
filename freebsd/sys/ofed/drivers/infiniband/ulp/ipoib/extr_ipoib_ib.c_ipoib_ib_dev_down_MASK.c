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
struct ipoib_dev_priv {int /*<<< orphan*/  pkey_poll_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  IPOIB_PKEY_STOP ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,int) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkey_mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct ipoib_dev_priv *priv, int flush)
{

	FUNC4(priv, "downing ib_dev\n");

	FUNC1(IPOIB_FLAG_OPER_UP, &priv->flags);
	FUNC3(priv->dev, LINK_STATE_DOWN);

	/* Shutdown the P_Key thread if still active */
	if (!FUNC11(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
		FUNC8(&pkey_mutex);
		FUNC10(IPOIB_PKEY_STOP, &priv->flags);
		FUNC0(&priv->pkey_poll_task);
		FUNC9(&pkey_mutex);
		if (flush)
			FUNC2(ipoib_workqueue);
	}

	FUNC7(priv, flush);
	FUNC6(priv);

	FUNC5(priv);

	return 0;
}