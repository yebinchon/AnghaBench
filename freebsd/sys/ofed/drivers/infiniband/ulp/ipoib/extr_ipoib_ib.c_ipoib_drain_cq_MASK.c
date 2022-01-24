#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  drain_lock; TYPE_1__* ibwc; int /*<<< orphan*/  recv_cq; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_4__ {scalar_t__ status; int wr_id; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 int IPOIB_NUM_WC ; 
 int IPOIB_OP_CM ; 
 int IPOIB_OP_RECV ; 
 int FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct ipoib_dev_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ipoib_dev_priv *priv)
{
	int i, n;

	FUNC5(&priv->drain_lock);
	do {
		n = FUNC0(priv->recv_cq, IPOIB_NUM_WC, priv->ibwc);
		for (i = 0; i < n; ++i) {
			/*
			 * Convert any successful completions to flush
			 * errors to avoid passing packets up the
			 * stack after bringing the device down.
			 */
			if (priv->ibwc[i].status == IB_WC_SUCCESS)
				priv->ibwc[i].status = IB_WC_WR_FLUSH_ERR;

			if ((priv->ibwc[i].wr_id & IPOIB_OP_RECV) == 0)
				FUNC4("ipoib_drain_cq:  Bad wrid 0x%jX\n",
				    (intmax_t)priv->ibwc[i].wr_id);
			if (priv->ibwc[i].wr_id & IPOIB_OP_CM)
				FUNC1(priv, priv->ibwc + i);
			else
				FUNC2(priv, priv->ibwc + i);
		}
	} while (n == IPOIB_NUM_WC);
	FUNC6(&priv->drain_lock);

	FUNC5(&priv->lock);
	while (FUNC3(priv, true))
		; /* nothing */

	FUNC6(&priv->lock);
}