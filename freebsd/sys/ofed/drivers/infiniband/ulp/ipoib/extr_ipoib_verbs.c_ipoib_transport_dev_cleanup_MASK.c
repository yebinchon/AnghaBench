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
struct ipoib_dev_priv {int /*<<< orphan*/  pd; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  flags; int /*<<< orphan*/ * qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*) ; 

void FUNC6(struct ipoib_dev_priv *priv)
{

	if (priv->qp) {
		if (FUNC3(priv->qp))
			FUNC5(priv, "ib_qp_destroy failed\n");

		priv->qp = NULL;
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
	}

	if (FUNC2(priv->send_cq))
		FUNC5(priv, "ib_cq_destroy (send) failed\n");

	if (FUNC2(priv->recv_cq))
		FUNC5(priv, "ib_cq_destroy (recv) failed\n");

	FUNC4(priv);

	FUNC1(priv->pd);
}