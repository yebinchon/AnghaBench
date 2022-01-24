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
struct ipoib_tx_buf {int /*<<< orphan*/ * mb; } ;
struct ipoib_rx_buf {int /*<<< orphan*/ * mb; } ;
struct ipoib_dev_priv {scalar_t__ tx_head; scalar_t__ tx_tail; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  ah_reap_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  qp; int /*<<< orphan*/  poll_timer; struct ipoib_rx_buf* rx_ring; int /*<<< orphan*/  tx_outstanding; int /*<<< orphan*/  ca; struct ipoib_tx_buf* tx_ring; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  IPOIB_STOP_REAPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,struct ipoib_rx_buf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ipoib_dev_priv*) ; 
 int ipoib_recvq_size ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC13 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (unsigned long,unsigned long) ; 

int FUNC19(struct ipoib_dev_priv *priv, int flush)
{
	struct ib_qp_attr qp_attr;
	unsigned long begin;
	struct ipoib_tx_buf *tx_req;
	int i;

	FUNC2(IPOIB_FLAG_INITIALIZED, &priv->flags);

	FUNC8(priv);

	/*
	 * Move our QP to the error state and then reinitialize in
	 * when all work requests have completed or have been flushed.
	 */
	qp_attr.qp_state = IB_QPS_ERR;
	if (FUNC5(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC1(priv, priv->qp, IB_QPS_ERR);

	/* Wait for all sends and receives to complete */
	begin = jiffies;

	while (priv->tx_head != priv->tx_tail || FUNC16(priv)) {
		if (FUNC18(jiffies, begin + 5 * HZ)) {
			FUNC13(priv, "timing out; %d sends %d receives not completed\n",
				   priv->tx_head - priv->tx_tail, FUNC16(priv));

			/*
			 * assume the HW is wedged and just free up
			 * all our pending work requests.
			 */
			while ((int) priv->tx_tail - (int) priv->tx_head < 0) {
				tx_req = &priv->tx_ring[priv->tx_tail &
							(ipoib_sendq_size - 1)];
				FUNC11(priv->ca, tx_req);
				FUNC14(tx_req->mb);
				++priv->tx_tail;
				--priv->tx_outstanding;
			}

			for (i = 0; i < ipoib_recvq_size; ++i) {
				struct ipoib_rx_buf *rx_req;

				rx_req = &priv->rx_ring[i];
				if (!rx_req->mb)
					continue;
				FUNC10(priv, &priv->rx_ring[i]);
				FUNC14(rx_req->mb);
				rx_req->mb = NULL;
			}

			goto timeout;
		}

		FUNC12(priv);

		FUNC15(1);
	}

	FUNC9(priv, "All sends and receives done.\n");

timeout:
	FUNC3(&priv->poll_timer);
	qp_attr.qp_state = IB_QPS_RESET;
	if (FUNC5(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC13(priv, "Failed to modify QP to RESET state\n");

	/* Wait for all AHs to be reaped */
	FUNC17(IPOIB_STOP_REAPER, &priv->flags);
	FUNC0(&priv->ah_reap_task);
	if (flush)
		FUNC4(ipoib_workqueue);

	FUNC7(priv);

	FUNC6(priv->recv_cq, IB_CQ_NEXT_COMP);

	return 0;
}