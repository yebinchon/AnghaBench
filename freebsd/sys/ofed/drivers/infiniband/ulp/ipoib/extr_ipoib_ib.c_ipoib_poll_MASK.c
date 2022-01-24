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
struct ipoib_dev_priv {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  drain_lock; struct ib_wc* ibwc; } ;
struct ib_wc {int wr_id; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 int IPOIB_NUM_WC ; 
 int IPOIB_OP_CM ; 
 int IPOIB_OP_RECV ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct ib_wc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ipoib_dev_priv *priv)
{
	int n, i;

poll_more:
	FUNC5(&priv->drain_lock);
	for (;;) {
		n = FUNC0(priv->recv_cq, IPOIB_NUM_WC, priv->ibwc);
		for (i = 0; i < n; i++) {
			struct ib_wc *wc = priv->ibwc + i;

			if ((wc->wr_id & IPOIB_OP_RECV) == 0)
				FUNC4("ipoib_poll: Bad wr_id 0x%jX\n",
				    (intmax_t)wc->wr_id);
			if (wc->wr_id & IPOIB_OP_CM)
				FUNC2(priv, wc);
			else
				FUNC3(priv, wc);
		}

		if (n != IPOIB_NUM_WC)
			break;
	}
	FUNC6(&priv->drain_lock);

	if (FUNC1(priv->recv_cq,
	    IB_CQ_NEXT_COMP | IB_CQ_REPORT_MISSED_EVENTS) > 0)
		goto poll_more;
}