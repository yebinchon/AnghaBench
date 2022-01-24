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
struct ipoib_dev_priv {int /*<<< orphan*/  dev; struct ib_wc* send_wc; int /*<<< orphan*/  send_cq; } ;
struct ib_wc {int wr_id; } ;

/* Variables and functions */
 int IPOIB_OP_CM ; 
 int MAX_SEND_CQE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ipoib_dev_priv*) ; 

int
FUNC4(struct ipoib_dev_priv *priv, bool do_start)
{
	int n, i;

	n = FUNC0(priv->send_cq, MAX_SEND_CQE, priv->send_wc);
	for (i = 0; i < n; ++i) {
		struct ib_wc *wc = priv->send_wc + i;
		if (wc->wr_id & IPOIB_OP_CM)
			FUNC1(priv, wc);
		else
			FUNC2(priv, wc);
	}

	if (do_start && n != 0)
		FUNC3(priv->dev, priv);

	return n == MAX_SEND_CQE;
}